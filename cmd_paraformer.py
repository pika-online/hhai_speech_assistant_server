import numpy as np 
from funasr_onnx import Paraformer
import subprocess



class ParaformerPlus(Paraformer):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.SR = 16000
        self.SECONDS_PER_FRAME = 0.02
        self.UPSAMPLE_TIMES = 3

    def decode(self,am_scores, valid_token_lens):
        res = []
        for am_score, valid_token_len in zip(am_scores, valid_token_lens):
            token_ids = am_score.argmax(axis=-1)
            token_chs = self.converter.ids2tokens(token_ids)
            token_chs_valid = token_chs[:valid_token_len]
            res.append(token_chs_valid)
        return res

    def __call__(self, waveform_list: list, hotwords: str = "",):

        # onnx推理
        waveform_nums = len(waveform_list)
        content = []
        id = 0
        duration = 0
        for beg_idx in range(0, waveform_nums, self.batch_size):
            end_idx = min(waveform_nums, beg_idx + self.batch_size)
            # 1.计算mel特征
            feats, feats_len = self.extract_feat(waveform_list[beg_idx:end_idx])
            # 3. 解码
            am_scores, valid_token_lens = self.infer(feats, feats_len)
            # 4. 后处理
            res = self.decode(am_scores, valid_token_lens)
        return am_scores, valid_token_lens
    

def read_audio_data(audio_bytes):
    ffmpeg_cmd = [
    'ffmpeg',
    '-i', 'pipe:',  
    '-f', 's16le',
    '-acodec', 'pcm_s16le',
    '-ar', '16k',
    '-ac', '1',
    'pipe:' ]
    with subprocess.Popen(ffmpeg_cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=False) as proc:
        stdout_data, stderr_data = proc.communicate(input=audio_bytes)
    pcm_data = np.frombuffer(stdout_data, dtype=np.int16)
    pcm_data = np.float32(pcm_data / (2**15))
    return pcm_data


if __name__ == "__main__":

    url = "/data/Work/wangwei/kws_paraformer/badcase/祝孔麟_5_04.mp3"
    audio_bytes = open(url,'rb').read()
    pcm_data = read_audio_data(audio_bytes)

    # 1. 加载模型
    paraformer = ParaformerPlus(model_dir='damo/speech_paraformer_asr_nat-zh-cn-16k-common-vocab8358-tensorflow1',
                                    quantize=True,
                                    batch_size=1,
                                    cache_dir='./funasr_models')

    am_scores, valid_token_lens = paraformer([pcm_data],hotwords='')

    am_score, valid_token_len = am_scores[0], valid_token_lens[0]

    am_score = am_score[:valid_token_len-1]


    WORDS_IDXS = []
    for WORD in WORDS:
        WORD_IDX = paraformer.converter.tokens2ids(list(WORD))
        WORDS_IDXS.append(WORD_IDX)
        print(WORD, WORD_IDX)
    print()


    for WORD, WORD_IDX in zip(WORDS, WORDS_IDXS):
        tgt_score = am_score[:,WORD_IDX]
        _max_id = np.argmax(tgt_score,axis=0)
        _max = np.max(tgt_score,axis=0)
        mean_score = np.mean(_max)
        print("候选词：",WORD)
        print("字段最大得分："," ".join(["%s: %s"%(a,b) for a,b in zip(WORD,_max)]))
        print("平均得分：",mean_score)
        print("---")






