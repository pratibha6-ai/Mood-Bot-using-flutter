from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def home():
    return "✅ Flask backend is running. Use the /chat endpoint."

@app.route('/chat', methods=['POST'])
def chat():
    user_input = request.json.get('message', '').lower()
    response = "Sorry, I didn’t understand that."

    if user_input == 'hello':
        response = 'Hi! How do you feel today? (sad, happy, joyful, motivation)'
    elif user_input == 'sad':
        response = '"Tough times never last, but tough people do."'
    elif user_input == 'happy':
        response = '"Happiness is not by chance, but by choice."'
    elif user_input == 'joyful':
        response = '"Joy is a net of love by which you can catch souls."'
    elif user_input == 'motivation':
        response = '"Push yourself, because no one else is going to do it for you."'

    return jsonify({'reply': response})

if __name__ == '__main__':
    app.run(debug=True)
