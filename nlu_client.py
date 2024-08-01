import requests
import json

# Define the base URL of the Flask server
base_url = 'http://127.0.0.1:10096'

# Function to upload the word list to the server
def upload_words(word_list):
    url = f'{base_url}/upload_words'
    payload = {
        'sentences_to_compare': word_list
    }
    headers = {'Content-Type': 'application/json'}
    
    response = requests.post(url, data=json.dumps(payload), headers=headers)
    
    if response.status_code == 200:
        print("Word list uploaded successfully.")
    else:
        print(f"Failed to upload word list: {response.json()}")

# Function to get the best match for a source sentence
def match_sentence(source_sentence):
    url = f'{base_url}/match_sentence'
    payload = {
        'source_sentence': source_sentence
    }
    headers = {'Content-Type': 'application/json'}
    
    response = requests.post(url, data=json.dumps(payload), headers=headers)
    
    if response.status_code == 200:
        result = response.json()
        print(f"Best match: {result['best_match']}")
        print(f"Score: {result['score']}")
    else:
        print(f"Failed to match sentence: {response.json()}")

# Example usage
if __name__ == '__main__':
    # Step 1: Upload a list of sentences to compare
    word_list = ["开启wps软件", "关闭wps软件", "打开浏览器"]
    upload_words(word_list)
    
    # Step 2: Match a source sentence against the uploaded list
    source_sentence = "打开wps软件"
    match_sentence(source_sentence)
