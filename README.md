# 🤖 Mood-Bot App

Welcome to the **Mood-Bot App** — a mood-aware conversational assistant built with **Flutter**!  
Whether you're feeling happy, sad, or just need a boost of motivation, this app is here to chat with you.

---

## 🌟 Project Overview

The ChatBot is designed to deliver **emotion-based responses**. Users can express their current mood (e.g., happy, sad, angry, motivated), and the chatbot will respond with appropriate messages, quotes, or even suggestions. It’s a vibrant, creative app with a sleek dark theme and engaging animations.

---

## 🚀 Features

- 🎨 **Beautiful UI**: Dark-themed, colorful, and expressive interface
- 💬 **Mood-Based Chat**: Choose your mood and get tailored responses
- 📱 **Responsive Layout**: Works on all screen sizes
- 🧠 **Modular Backend Logic**: Cleanly separated logic and UI
- 🔌 **Extensible Architecture**: Easy to plug in APIs or AI later

---

## 📂 Project Structure
chatbot_app/
├── assets/
│   └── images/
│       └── app_icon.ico           # Mood-related icons or illustrations
├── lib/
│   ├── main.dart                  # Entry point
│   ├── ui/
│   │   ├── home_page.dart         # Main landing screen
│   │   └── chat_page.dart         # Chat interface
│   ├── widgets/
│   │   ├── mood_buttons.dart      # Mood selection buttons
│   │   └── message_bubble.dart    # Chat message widget
│   └── logic/
│       └── chatbot_responses.dart # Mood-based response logic
├── app.py                         # Backend logic using Flask or other framework
└── pubspec.yaml

---

## 🛠️ Tech Stack

- 💻 **Flutter** – Cross-platform mobile framework
- 🎨 **Dart** – Programming language used by Flutter
- 🧱 **State Management** – (SetState / Provider / Riverpod – based on preference)
- 🔮 **(Optional)** Integration-ready with AI/ML models (e.g., Dialogflow, OpenAI)

---

## 🧭 Development Roadmap

### ✅ Phase 1: Core MVP
- [ ] Setup Flutter environment
- [ ] Create landing page with a dark theme
- [ ] Add animated chatbot logo or entry animation
- [ ] Implement mood buttons: Happy, Sad, Angry, Motivation
- [ ] Generate mood-specific responses from static logic

### 🔄 Phase 2: UI/UX Polishing
- [ ] Add message bubble animations
- [ ] Add emojis or illustrations for mood feedback
- [ ] Improve input bar with send button animation
- [ ] Include message time stamps

### 🌐 Phase 3: Backend & Intelligence
- [ ] Connect with AI/ML API (e.g., OpenAI, Dialogflow)
- [ ] Create a backend using Flask / Firebase

## 👩‍💻 How to Run

1. Make sure Flutter is installed: `flutter doctor`
2. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/chatbot_app.git
   cd chatbot_app

Get dependencies:RUN 
     flutter pub get
Run the app:
     flutter run








