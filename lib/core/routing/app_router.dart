import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/auth_screen.dart';
import '../../features/coming_soon/presentation/coming_soon_screen.dart';
import '../../features/feed/presentation/feed_screen.dart';
import '../../features/profile/presentation/profile_setup_screen.dart';
import '../../shared/widgets/main_layout.dart';
import '../../shared/providers/user_state_provider.dart';

/// Notifier for router refreshes
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/auth',
    refreshListenable: GoRouterRefreshStream(
      ref.watch(userStateProvider.stream),
    ),
    redirect: (context, state) {
      final userStateAsync = ref.read(userStateProvider);

      // If still loading, don't redirect
      if (userStateAsync is AsyncLoading) {
        return null;
      }

      final userState = userStateAsync.value ?? const UserStateLoading();
      final isAuthRoute = state.matchedLocation == '/auth';
      final isProfileSetupRoute = state.matchedLocation == '/profile-setup';

      // Handle different user states
      if (userState.isLoading) {
        // While loading, don't redirect - let the current route handle loading state
        return null;
      }

      if (!userState.isAuthenticated) {
        // User is not authenticated, redirect to auth unless already there
        if (!isAuthRoute) {
          return '/auth';
        }
        return null;
      }

      if (userState.isAuthenticated && !userState.hasProfile) {
        // User is authenticated but has no profile, redirect to profile setup
        if (!isProfileSetupRoute) {
          return '/profile-setup';
        }
        return null;
      }

      if (userState.isAuthenticated && userState.hasProfile) {
        // User is fully authenticated with profile
        if (isAuthRoute || isProfileSetupRoute) {
          return '/';
        }
        return null;
      }

      // No redirect needed
      return null;
    },
    routes: [
      GoRoute(path: '/auth', builder: (context, state) => const AuthScreen()),
      GoRoute(
        path: '/profile-setup',
        builder: (context, state) => const ProfileSetupScreen(),
      ),
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
