import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_navigation/screens/chat.dart';
import 'package:go_router_navigation/screens/details.dart';
import 'package:go_router_navigation/screens/edit_profile.dart';
import 'package:go_router_navigation/screens/favourite.dart';
import 'package:go_router_navigation/screens/home.dart';
import 'package:go_router_navigation/screens/login.dart';
import 'package:go_router_navigation/screens/profile.dart';

import '../screens/bottombar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  errorBuilder: (context, state) => Details(),
  redirect: (context, state) {
    // Example condition for user login status
    final bool isLoggedIn = true; // Replace with your actual login status check

    // If the user is not logged in, redirect to the login page
    if (!isLoggedIn && state.uri.toString() != '/login') {
      return '/login';
    }

    // If the user is logged in and tries to access login, redirect to home
    if (isLoggedIn && state.uri.toString() == '/login') {
      return '/';
    }

    // No redirection needed
    return null;
  },
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          LayoutScaffold(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => Home(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favourite',
              builder: (context, state) => Favourite(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/chat',
              builder: (context, state) => Chat(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => Profile(),
              routes: [
                GoRoute(
                  name: 'editProfile',
                  path: 'editProfile',
                  builder: (context, state) => EditProfile(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => Details(),
    ),
  ],
);
