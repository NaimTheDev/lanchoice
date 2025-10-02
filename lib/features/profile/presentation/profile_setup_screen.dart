import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/providers/user_state_provider.dart';
import '../../../features/auth/presentation/auth_controller.dart';

class ProfileSetupScreen extends ConsumerStatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  ConsumerState<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends ConsumerState<ProfileSetupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _displayNameController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _displayNameController.dispose();
    super.dispose();
  }

  Future<void> _createProfile() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final createProfile = ref.read(createUserProfileProvider);
      await createProfile(displayName: _displayNameController.text.trim());

      if (mounted) {
        // Profile created successfully, router will handle navigation
        context.go('/');
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to create profile: $error'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final userState = ref.watch(currentUserStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Your Profile'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Welcome message
              Container(
                padding: const EdgeInsets.all(AppConstants.paddingLarge),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.person_add,
                      size: 64,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: AppConstants.paddingMedium),
                    Text(
                      'Welcome to Lane Choice!',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: AppConstants.paddingSmall),
                    Text(
                      'Let\'s set up your profile to get started.',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: AppConstants.paddingLarge),

              // Email display (read-only)
              if (userState.firebaseUser?.email != null) ...[
                Text('Email', style: theme.textTheme.labelLarge),
                const SizedBox(height: AppConstants.paddingSmall),
                Container(
                  padding: const EdgeInsets.all(AppConstants.paddingMedium),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    userState.firebaseUser!.email!,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: AppConstants.paddingLarge),
              ],

              // Display name input
              Text('Display Name', style: theme.textTheme.labelLarge),
              const SizedBox(height: AppConstants.paddingSmall),
              TextFormField(
                controller: _displayNameController,
                decoration: const InputDecoration(
                  hintText: 'Enter your display name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a display name';
                  }
                  if (value.trim().length < 2) {
                    return 'Display name must be at least 2 characters';
                  }
                  return null;
                },
                enabled: !_isLoading,
              ),

              const SizedBox(height: AppConstants.paddingLarge),

              // Create profile button
              ElevatedButton(
                onPressed: _isLoading ? null : _createProfile,
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Create Profile'),
              ),

              const Spacer(),

              // Sign out option
              TextButton(
                onPressed: _isLoading
                    ? null
                    : () async {
                        // Sign out and go back to auth
                        final authController = ref.read(
                          authControllerProvider.notifier,
                        );
                        await authController.signOut();
                        if (mounted) {
                          context.go('/auth');
                        }
                      },
                child: const Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
