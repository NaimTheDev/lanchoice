import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/torque_theme_extension.dart';
import '../../features/auth/presentation/auth_controller.dart';
import '../providers/user_state_provider.dart';

class MainLayout extends ConsumerWidget {
  const MainLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final torqueTheme = theme.extension<TorqueThemeExtension>()!;
    final userState = ref.watch(currentUserStateProvider);

    // Show loading screen if user state is loading
    if (userState.isLoading) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.directions_car,
                size: 64,
                color: torqueTheme.racingGreen,
              ),
              const SizedBox(height: AppConstants.paddingLarge),
              Text(
                AppConstants.appName,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: torqueTheme.racingGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.paddingLarge),
              const CircularProgressIndicator(),
              const SizedBox(height: AppConstants.paddingMedium),
              Text(
                'Loading your profile...',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.directions_car, color: torqueTheme.racingGreen),
            const SizedBox(width: AppConstants.paddingSmall),
            Text(
              AppConstants.appName,
              style: TextStyle(
                color: torqueTheme.racingGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: Implement notifications
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await ref.read(authControllerProvider.notifier).signOut();
            },
          ),
        ],
      ),
      body: child,
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final torqueTheme = theme.extension<TorqueThemeExtension>()!;
    final currentLocation = GoRouterState.of(context).uri.toString();

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.paddingSmall,
            vertical: AppConstants.paddingSmall,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                icon: Icons.home,
                label: 'Feed',
                isActive: currentLocation == '/',
                onTap: () => context.go('/'),
              ),
              _NavItem(
                icon: Icons.group,
                label: 'Groups',
                isActive: currentLocation == '/groups',
                onTap: () => context.go('/groups'),
              ),
              _NavItem(
                icon: Icons.favorite,
                label: 'Dating',
                isActive: currentLocation == '/speed-dating',
                onTap: () => context.go('/speed-dating'),
              ),
              _NavItem(
                icon: Icons.sports_motorsports,
                label: 'Slayer',
                isActive: currentLocation == '/tire-slayer',
                onTap: () => context.go('/tire-slayer'),
              ),
              _NavItem(
                icon: Icons.how_to_vote,
                label: 'Vote',
                isActive: currentLocation == '/vote',
                onTap: () => context.go('/vote'),
              ),
              _NavItem(
                icon: Icons.person,
                label: 'Profile',
                isActive: currentLocation == '/profile',
                onTap: () => context.go('/profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final torqueTheme = theme.extension<TorqueThemeExtension>()!;

    final color = isActive
        ? theme.colorScheme.primary
        : theme.colorScheme.onSurface.withOpacity(0.6);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingSmall,
          vertical: AppConstants.paddingSmall,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 2),
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: color,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
