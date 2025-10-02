import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/auth_controller.dart';
import '../../features/auth/presentation/auth_screen.dart';
import '../../features/coming_soon/presentation/coming_soon_screen.dart';
import '../../features/feed/presentation/feed_screen.dart';
import '../../shared/widgets/main_layout.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authControllerProvider);

  return GoRouter(
    initialLocation: '/auth',
    redirect: (context, state) {
      final isAuthRoute = state.matchedLocation == '/auth';
      final isAuthenticated = authState.value != null;

      // If not authenticated and not on auth route, redirect to auth
      if (!isAuthenticated && !isAuthRoute) {
        return '/auth';
      }

      // If authenticated and on auth route, redirect to home
      if (isAuthenticated && isAuthRoute) {
        return '/';
      }

      // No redirect needed
      return null;
    },
    routes: [
      GoRoute(path: '/auth', builder: (context, state) => const AuthScreen()),
      ShellRoute(
        builder: (context, state, child) => MainLayout(child: child),
        routes: [
          GoRoute(path: '/', builder: (context, state) => const FeedScreen()),
          GoRoute(
            path: '/groups',
            builder: (context, state) => const ComingSoonScreen(
              title: 'Groups',
              description: 'Join car clubs and communities',
              icon: Icons.group,
            ),
          ),
          GoRoute(
            path: '/speed-dating',
            builder: (context, state) => const ComingSoonScreen(
              title: 'Speed Dating',
              description: 'Match with car enthusiasts based on your ride!',
              icon: Icons.favorite,
            ),
          ),
          GoRoute(
            path: '/tire-slayer',
            builder: (context, state) => const ComingSoonScreen(
              title: 'Tire Slayer',
              description: 'Compete in epic car challenges!',
              icon: Icons.sports_motorsports,
            ),
          ),
          GoRoute(
            path: '/vote',
            builder: (context, state) => const ComingSoonScreen(
              title: 'Car of the Week',
              description: 'Vote for the most impressive rides!',
              icon: Icons.how_to_vote,
            ),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ComingSoonScreen(
              title: 'Profile',
              description: 'Your car enthusiast profile',
              icon: Icons.person,
            ),
          ),
        ],
      ),
    ],
  );
});
