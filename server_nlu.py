from flask import Flask, request, jsonify
from modelscope.models import Model
from modelscope.pipelines import pipeline
from modelscope.utils.constant import Tasks
import numpy as np

# Initialize Flask app
app = Flask(__name__)

# Load the sentence embedding model
MODEL_ID = "models/damo/nlp_corom_sentence-embedding_chinese-base"
sentence_embedding_pipeline = pipeline(Tasks.sentence_embedding, model=MODEL_ID)

# Global variable to store uploaded sentences for comparison
comparison_sentences = []

@app.route('/upload_words', methods=['POST'])
def upload_words():
    """Endpoint to upload sentences for comparison."""
    global comparison_sentences
    data = request.json
    if 'sentences_to_compare' in data:
        comparison_sentences = data['sentences_to_compare']
        return jsonify({'code': 0, 'message': 'Word list updated successfully'}), 200
    else:
        return jsonify({'code': 1, 'message': 'sentences_to_compare not provided'}), 400

@app.route('/match_sentence', methods=['POST'])
def match_sentence():
    """Endpoint to match a source sentence against the uploaded comparison sentences."""
    if not comparison_sentences:
        return jsonify({'code': 1, 'message': 'Word list is empty. Please upload words first.'}), 400
    
    data = request.json
    if 'source_sentence' in data:
        source_sentence = data['source_sentence']
        
        # Prepare input for the model
        inputs = {
            'source_sentence': [source_sentence],
            'sentences_to_compare': comparison_sentences
        }
        
        # Get the result from the model
        result = sentence_embedding_pipeline(input=inputs)
        scores = result['scores']
        max_id = np.argmax(scores)
        best_match = comparison_sentences[max_id]
        best_score = scores[max_id]
        
        # Return the best match and the score
        return jsonify({
            'code': 0,
            'best_match': best_match,
            'score': float(best_score)
        }), 200
    else:
        return jsonify({'code': 1, 'message': 'source_sentence not provided'}), 400

# Run the Flask app
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10096)
