import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LayoutScaffold extends StatelessWidget {
  const LayoutScaffold({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('LayoutScaffold'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print(navigationShell.currentIndex);
                  context.go('/');
                },
                child: const Icon(Icons.home),
              ),
              InkWell(
                onTap: () {
                  print(navigationShell.currentIndex);
                  context.go('/favourite');
                },
                child: const Icon(Icons.favorite),
              ),
              InkWell(
                onTap: () {
                  print(navigationShell.currentIndex);
                  context.go('/chat');
                },
                child: const Icon(Icons.chat),
              ),
              InkWell(
                onTap: () {
                  print(navigationShell.currentIndex);
                  context.go('/profile');
                },
                child: const Icon(Icons.person),
              ),
            ],
          ),
        ),
      );
}
