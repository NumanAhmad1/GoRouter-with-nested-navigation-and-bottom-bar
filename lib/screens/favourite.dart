import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite"),
      ),
      body: const Column(
        children: [
          Text(
            "Favourite Screen",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}