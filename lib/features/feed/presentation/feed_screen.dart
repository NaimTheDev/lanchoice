import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/providers/demo_providers.dart';
import '../../../shared/widgets/post_card.dart';
import '../../../shared/widgets/user_avatar.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(demoPostsProvider);
    final currentUser = ref.watch(currentUserProvider);
    final theme = Theme.of(context);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          // Simulate refresh
          await Future.delayed(const Duration(seconds: 1));
        },
        child: CustomScrollView(
          slivers: [
            // Create post section
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(AppConstants.paddingMedium),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppConstants.paddingMedium),
                    child: Row(
                      children: [
                        UserAvatar(user: currentUser, radius: 20),
                        const SizedBox(width: AppConstants.paddingMedium),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // TODO: Navigate to create post screen
                              context.push('/create-post');
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppConstants.paddingMedium,
                                vertical: AppConstants.paddingMedium,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.surfaceVariant,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'What\'s on your mind, ${currentUser.name.split(' ').first}?',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppConstants.paddingMedium),
                        IconButton(
                          icon: Icon(
                            Icons.photo_camera,
                            color: theme.colorScheme.primary,
                          ),
                          onPressed: () {
                            // TODO: Open camera/gallery
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Posts list
            if (posts.isEmpty)
              const SliverFillRemaining(child: _EmptyFeedWidget())
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.paddingMedium,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final post = posts[index];
                    return PostCard(post: post);
                  }, childCount: posts.length),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _EmptyFeedWidget extends StatelessWidget {
  const _EmptyFeedWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppConstants.paddingLarge),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.timeline,
                size: 64,
                color: theme.colorScheme.primary,
              ),
            ),

            const SizedBox(height: AppConstants.paddingLarge),

            Text(
              'Welcome to Lane Choice!',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppConstants.paddingMedium),

            Text(
              'Your feed is empty. Start following other car enthusiasts or create your first post to get started!',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppConstants.paddingLarge),

            ElevatedButton.icon(
              onPressed: () {
                // TODO: Navigate to create post
              },
              icon: const Icon(Icons.add),
              label: const Text('Create Your First Post'),
            ),
          ],
        ),
      ),
    );
  }
}
