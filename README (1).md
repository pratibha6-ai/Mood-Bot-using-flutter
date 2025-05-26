# 🤖 ChatBot App

Welcome to the **ChatBot App** — a mood-aware conversational assistant built with **Flutter**!  
Whether you're feeling happy, sad, or just need a boost of motivation, this app is here to chat with you.

---

## 🌟 Project Overview

The ChatBot App is designed to deliver **emotion-based responses**. Users can express their current mood (e.g., happy, sad, angry, motivated), and the chatbot will respond with appropriate messages, quotes, or even suggestions. It’s a vibrant, creative app with a sleek dark theme and engaging animations.

---

## 🚀 Features

- 🎨 **Beautiful UI**: Dark-themed, colorful, and expressive interface
- 💬 **Mood-Based Chat**: Choose your mood and get tailored responses
- 📱 **Responsive Layout**: Works on all screen sizes
- 🧠 **Modular Backend Logic**: Cleanly separated logic and UI
- 🔌 **Extensible Architecture**: Easy to plug in APIs or AI later

---

## 📂 Project Structure

```
chatbot_app/
├── assets/
│   └── images/                # Mood-related icons or illustrations
├── lib/
│   ├── main.dart              # Entry point
│   ├── ui/
│   │   ├── home_page.dart     # Main landing screen
│   │   └── chat_page.dart     # Chat interface
│   ├── widgets/
│   │   ├── mood_buttons.dart  # Mood selection buttons
│   │   └── message_bubble.dart# Chat message widget
│   └── logic/
│       └── chatbot_responses.dart # Mood-based response logic
└── pubspec.yaml
```

---

## 🛠️ Tech Stack

- 💻 **Flutter** – Cross-platform mobile framework
- 🎨 **Dart** – Programming language used by Flutter
- 🧱 **State Management** – (SetState / Provider / Riverpod – based on preference)
- 🔮 **(Optional)** Integration-ready with AI/ML models (e.g., Dialogflow, OpenAI)

---

## 🧭 Development Roadmap

### ✅ Phase 1: Core MVP
- [x] Setup Flutter environment
- [x] Create landing page with a dark theme
- [x] Add animated chatbot logo or entry animation
- [x] Implement mood buttons: Happy, Sad, Angry, Motivation
- [x] Generate mood-specific responses from static logic

### 🔄 Phase 2: UI/UX Polishing
- [ ] Add message bubble animations
- [ ] Add emojis or illustrations for mood feedback
- [ ] Improve input bar with send button animation
- [ ] Include message time stamps

### 🌐 Phase 3: Backend & Intelligence
- [ ] Connect with AI/ML API (e.g., OpenAI, Dialogflow)
- [ ] Create a backend using Flask / Firebase
- [ ] Store chat history locally or on cloud

### 📊 Phase 4: Analytics & Personalization
- [ ] Track user mood trends over time
- [ ] Display mood-based suggestions or quotes
- [ ] Push notifications for motivational quotes


## 👩‍💻 How to Run

1. Make sure Flutter is installed: `flutter doctor`
2. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/chatbot_app.git
   cd chatbot_app
   ```
3. Get dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```
