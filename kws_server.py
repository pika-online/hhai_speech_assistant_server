import sherpa_onnx
from sherpa_onnx.utils import text2token
import websockets
import asyncio
import json
import numpy as np
import time


def audio_f2i(data,width=16):
    data = np.array(data)
    return np.int16(data*(2**(width-1)))

def audio_i2f(data,width=16):
    data = np.array(data)
    return np.float32(data/(2**(width-1)))

def words2lexicon(words, tokens):
    results = text2token(words, tokens=tokens, tokens_type='ppinyin')
    res = []
    for word, result in zip(words, results):
        lex = f"{' '.join(result)} @{word}"
        res.append(lex)
    return res


def init_model(model_dir):
    """初始化模型"""
    keyword_spotter = sherpa_onnx.KeywordSpotter(
        tokens=f"{model_dir}/tokens.txt",
        encoder=f"{model_dir}/encoder-epoch-12-avg-2-chunk-16-left-64.onnx",
        decoder=f"{model_dir}/decoder-epoch-12-avg-2-chunk-16-left-64.onnx",
        joiner=f"{model_dir}/joiner-epoch-12-avg-2-chunk-16-left-64.onnx",
        num_threads=2,
        max_active_paths=4,
        keywords_file='keywords.txt',
        keywords_score=1.0,
        keywords_threshold=0.25,
        num_trailing_blanks=1,
        provider="cpu",
    )
    return keyword_spotter

keyword_spotter = None
stream = None


async def keyword_spotting(websocket, path):
    global keyword_spotter, stream

    try:
        async for message in websocket:

            data = json.loads(message)
            # print(data['remote'])

            """初始化模型"""
            if data['remote'] == "init":
                model_dir = "models/sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01"
                keyword_spotter = init_model(model_dir)
                words = data['words']
                res = words2lexicon(words, tokens=f"{model_dir}/tokens.txt")
                print(res)
                lexicon = "/".join(res)
                stream = keyword_spotter.create_stream(keywords=lexicon)
                await websocket.send(json.dumps({'code':0,'message':res}))
                print("Init Success ..")

            """退出模型"""
            if data['remote'] == "deinit":
                if keyword_spotter:
                    del keyword_spotter
                keyword_spotter = None
                stream = None
                await websocket.send(json.dumps({'code':0,'message':"Deinit Success .."}))
                print("Deinit Success ..")

            """唤醒监听"""
            if data['remote'] == "listen":
                samples = audio_i2f(data['samples'])
                sample_rate = data['sample_rate']
                stream.accept_waveform(sample_rate, samples)
                while keyword_spotter.is_ready(stream):
                    keyword_spotter.decode_stream(stream)
                result = keyword_spotter.get_result(stream)
                if result:
                    print(result)
                    await websocket.send(json.dumps({'code':0,'message':result}))

    except websockets.ConnectionClosedError as e:
        print(f"Connection closed with error: {e}")
    except Exception as e:
        await websocket.send(json.dumps({'code':1,'message':e}))

start_server = websockets.serve(keyword_spotting, "0.0.0.0", 10094)

asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()
