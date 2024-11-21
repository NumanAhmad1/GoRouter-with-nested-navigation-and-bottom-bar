import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EditProfile"),
      ),
      body: const Column(
        children: [
          Text(
            "EditProfile Screen",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}
