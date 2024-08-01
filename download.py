#SDK模型下载
from modelscope import snapshot_download
model_dir = snapshot_download("damo/nlp_corom_sentence-embedding_chinese-base",cache_dir='./models')

