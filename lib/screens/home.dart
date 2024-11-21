import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_navigation/routes/routes.dart';
import 'package:go_router_navigation/screens/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          const Text(
            "Home Screen",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.push("/details");
            },
            child: const Text("Push to Details Screen"),
          ),
        ],
      ),
    );
  }
}
