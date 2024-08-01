from flask import Flask, request, jsonify
from modelscope.models import Model
from modelscope.pipelines import pipeline
from modelscope.utils.constant import Tasks
import numpy as np

# Initialize Flask app
app = Flask(__name__)

# Load the sentence embedding model
model_id = "models/damo/nlp_corom_sentence-embedding_chinese-base"
pipeline_se = pipeline(Tasks.sentence_embedding, model=model_id)

# Global variable to store words
words = []

@app.route('/upload_words', methods=['POST'])
def upload_words():
    global words
    data = request.json
    if 'sentences_to_compare' in data:
        words = data['sentences_to_compare']
        return jsonify({"message": "Word list updated successfully"}), 200
    else:
        return jsonify({"error": "sentences_to_compare not provided"}), 400

@app.route('/match_sentence', methods=['POST'])
def match_sentence():
    if not words:
        return jsonify({"error": "Word list is empty. Please upload words first."}), 400
    
    data = request.json
    if 'source_sentence' in data:
        source_sentence = data['source_sentence']
        
        # Prepare input for the model
        inputs = {
            "source_sentence": [source_sentence],
            "sentences_to_compare": words
        }
        
        # Get the result from the model
        result = pipeline_se(input=inputs)
        scores = result['scores']
        max_id = np.argmax(scores)
        best_match = words[max_id]
        best_score = scores[max_id]
        
        # Return the best match and the score
        return jsonify({
            "best_match": best_match,
            "score": float(best_score)
        }), 200
    else:
        return jsonify({"error": "source_sentence not provided"}), 400

# Run the Flask app
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10096)
