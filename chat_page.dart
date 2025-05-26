from flask import Flask, request, jsonify

app = Flask(__name__)

mood_quotes = {
    "sad": "Every day may not be good... but there's something good in every day.",
    "happy": "Happiness is not something ready-made. It comes from your own actions.",
    "joyful": "Joy is the simplest form of gratitude.",
    "motivated": "The harder you work for something, the greater you'll feel when you achieve it."
}

@app.route('/chatbot', methods=['POST'])
def chatbot():
    data = request.json
    user_msg = data.get('message', '').strip().lower()

    if user_msg == "hello":
        return jsonify({"reply": "Hi! How do you feel today? Please choose from: sad, happy, joyful, motivated."})

    elif user_msg in mood_quotes:
        return jsonify({"reply": mood_quotes[user_msg]})

    elif user_msg in ["sad", "happy", "joyful", "motivated"]:
        # just in case of case mismatch or minor typo handling - fallback here
        return jsonify({"reply": mood_quotes.get(user_msg)})

    elif user_msg in ["", None]:
        return jsonify({"reply": "Please choose from these options: sad, happy, joyful, motivated."})

    else:
        # If user writes anything else (not recognized)
        return jsonify({"reply": "I am always here to listen you. Share your feelings."})

if __name__ == "__main__":
    app.run(debug=True)

