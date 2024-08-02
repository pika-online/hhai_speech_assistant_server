import sherpa_onnx
from sherpa_onnx.utils import text2token
import websockets
import asyncio
import json
import numpy as np


def float_to_int16(data, width=16):
    """Convert floating-point audio data to int16 format."""
    data = np.array(data)
    return np.int16(data * (2 ** (width - 1)))


def int16_to_float(data, width=16):
    """Convert int16 audio data to floating-point format."""
    data = np.array(data)
    return np.float32(data / (2 ** (width - 1)))


def words_to_lexicon(words, tokens):
    """Convert words to lexicon format using pinyin tokens."""
    tokenized_words = text2token(words, tokens=tokens, tokens_type='ppinyin')
    lexicon_entries = []
    for word, tokens in zip(words, tokenized_words):
        lexicon_entry = f"{' '.join(tokens)} @{word}"
        lexicon_entries.append(lexicon_entry)
    return lexicon_entries


def initialize_model(model_directory):
    """Initialize the keyword spotting model."""
    return sherpa_onnx.KeywordSpotter(
        tokens=f"{model_directory}/tokens.txt",
        encoder=f"{model_directory}/encoder-epoch-12-avg-2-chunk-16-left-64.onnx",
        decoder=f"{model_directory}/decoder-epoch-12-avg-2-chunk-16-left-64.onnx",
        joiner=f"{model_directory}/joiner-epoch-12-avg-2-chunk-16-left-64.onnx",
        num_threads=2,
        max_active_paths=4,
        keywords_file='keywords.txt',
        keywords_score=1.0,
        keywords_threshold=0.25,
        num_trailing_blanks=1,
        provider="cpu",
    )


async def keyword_spotting_handler(websocket, path):
    keyword_spotter = None
    stream = None

    try:
        async for message in websocket:
            data = json.loads(message)

            # Initialize the model
            if data['remote'] == "init":
                model_directory = "models/sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01"
                keyword_spotter = initialize_model(model_directory)
                words = data['words']
                lexicon = "/".join(words_to_lexicon(words, tokens=f"{model_directory}/tokens.txt"))
                stream = keyword_spotter.create_stream(keywords=lexicon)
                await websocket.send(json.dumps({'code': 0, 'message': lexicon, 'remote': 'init'}))
                print("Initialization successful.")

            # Deinitialize the model
            elif data['remote'] == "deinit":
                if keyword_spotter:
                    del keyword_spotter
                keyword_spotter = None
                stream = None
                await websocket.send(json.dumps({'code': 0, 'message': "Deinitialization successful", 'remote': 'deinit'}))
                print("Deinitialization successful.")

            # Start keyword spotting
            elif data['remote'] == "listen":
                samples = int16_to_float(data['samples'])
                sample_rate = data['sample_rate']
                stream.accept_waveform(sample_rate, samples)
                while keyword_spotter.is_ready(stream):
                    keyword_spotter.decode_stream(stream)
                result = keyword_spotter.get_result(stream)
                if result:
                    print(result)
                    await websocket.send(json.dumps({'code': 0, 'message': result, 'remote': 'listen'}))

    except websockets.ConnectionClosedError as e:
        print(f"Connection closed with error: {e}")
    except Exception as e:
        await websocket.send(json.dumps({'code': 1, 'message': str(e), 'remote': data['remote']}))


if __name__ == "__main__":
    server = websockets.serve(keyword_spotting_handler, "0.0.0.0", 10094)
    asyncio.get_event_loop().run_until_complete(server)
    asyncio.get_event_loop().run_forever()
