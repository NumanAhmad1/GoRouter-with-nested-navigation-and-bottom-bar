import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: const Column(
        children: [
          Text(
            "Chat Screen",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}
