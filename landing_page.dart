import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ChatBot',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'How can I assist you?',
                style: TextStyle(fontSize: 20, color: Colors.grey[300]),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ChatPage()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Start Chat',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<_Message> _messages = [];
  int _chatStage = 0; // 0=waiting for "hello", 1=asked mood, 2=done

  Map<String, String> moodQuotes = {
    'sad': "Every day may not be good, but there's something good in every day.",
    'happy': "Happiness is not by chance, but by choice.",
    'joyful': "Joy is the simplest form of gratitude.",
    'motivation': "The only way to do great work is to love what you do.",
  };

  void _handleSubmitted(String text) {
    if (text.trim().isEmpty) return;
    setState(() {
      _messages.add(_Message(text: text, isUser: true));
    });

    String userInput = text.trim().toLowerCase();

    Future.delayed(Duration(milliseconds: 500), () {
      if (_chatStage == 0) {
        // Expecting hello
        if (userInput == 'hello') {
          _botReply("Hi, how can I assist you?");
          Future.delayed(Duration(seconds: 1), () {
            _botReply("How do you feel today? (sad, happy, joyful, motivation)");
            _chatStage = 1;
          });
        } else {
          _botReply("Please say 'hello' to start.");
        }
      } else if (_chatStage == 1) {
        // User mood response
        if (moodQuotes.containsKey(userInput)) {
          _botReply(moodQuotes[userInput]!);
          _chatStage = 2;
        } else {
          _botReply("Please reply with one of these moods: sad, happy, joyful, motivation");
        }
      } else {
        // Chat ended or can extend further
        _botReply("Thank you for chatting! Restart the app to chat again.");
      }
    });
    _controller.clear();
  }

  void _botReply(String text) {
    setState(() {
      _messages.add(_Message(text: text, isUser: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatBot"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  alignment:
                      msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: msg.isUser ? Colors.deepPurple : Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      msg.text,
                      style: TextStyle(
                          color: msg.isUser ? Colors.white : Colors.black87,
                          fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: _handleSubmitted,
                    decoration:
                        InputDecoration.collapsed(hintText: "Type your message"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.deepPurple),
                  onPressed: () => _handleSubmitted(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Message {
  final String text;
  final bool isUser;
  _Message({required this.text, required this.isUser});
}
