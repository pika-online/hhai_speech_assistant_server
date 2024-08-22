from flask import Flask, request, jsonify
import time 
import numpy as np
import os 
import subprocess 
from cmd_paraformer import ParaformerPlus, read_audio_data

class Timer:
    def __enter__(self):
        self.start = time.time()
        return self

    def __exit__(self, *args):
        self.end = time.time()
        self.interval = self.end - self.start


paraformer = ParaformerPlus(model_dir='/root/hhai_speech_assistant_server/models/damo/speech_paraformer_asr_nat-zh-cn-16k-common-vocab8358-tensorflow1',
                            quantize=True,
                            batch_size=1,
                            cache_dir='./models')

with open('hotwords.txt', 'r', encoding='utf-8') as f:
    WORDS = f.readlines()
    WORDS = [line.strip() for line in WORDS if len(line.strip()) <= 10]

WORDS_IDXS = []
for WORD in WORDS:
    WORD_IDX = paraformer.converter.tokens2ids(list(WORD))
    WORDS_IDXS.append(WORD_IDX)
    print(WORD, WORD_IDX)
print()



app = Flask(__name__)

@app.route('/recognition', methods=['POST'])
def recognition():
    json_data = {"code": 1}

    ip = request.remote_addr
    print("Client IP:", ip)
    
    # Read audio file from the request
    file = request.files['file']
    audio_bytes = file.read()
    
    # Process audio using ffmpeg
    with Timer() as t:
        pcm_data = read_audio_data(audio_bytes)
    json_data["cost_load_audio_seconds"] = t.interval


    # Perform ASR using the model
    with Timer() as t:
        best_word = ""

        try:
            am_scores, valid_token_lens = paraformer([pcm_data],hotwords='')
            am_score, valid_token_len = am_scores[0], valid_token_lens[0]
            am_score = am_score[:valid_token_len-1]
            best_score = -float('inf')
            for WORD, WORD_IDX in zip(WORDS, WORDS_IDXS):
                tgt_score = am_score[:,WORD_IDX]
                _max = np.max(tgt_score,axis=1)
                mean_score = np.mean(_max)
                if mean_score>best_score:
                    best_score = mean_score
                    best_word = WORD
                print(WORD, mean_score)
        except Exception as e:
            pass

    json_data["cost_asr_seconds"] = t.interval
    json_data['word'] = best_word


    # Create and return JSON responsec
    json_data['code'] = 0
    print(json_data)
    response = jsonify(json_data)
    response.headers['Content-Type'] = 'application/json; charset=utf-8'
    
    return response

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=10095, debug=False)
