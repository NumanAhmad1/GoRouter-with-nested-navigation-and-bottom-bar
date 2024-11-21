import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_navigation/routes/routes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        children: [
          const Text(
            "Profile Screen",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.pushNamed('editProfile');
              // context.goNamed('editProfile');
            },
            child: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
