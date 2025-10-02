import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/user.dart';
import '../../core/constants/app_constants.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.user,
    this.radius = 20,
    this.onTap,
  });

  final User user;
  final double radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget avatar = CircleAvatar(
      radius: radius,
      backgroundColor: theme.colorScheme.surfaceVariant,
      child: user.avatarUrl.isNotEmpty
          ? ClipOval(
              child: CachedNetworkImage(
                imageUrl: user.avatarUrl,
                width: radius * 2,
                height: radius * 2,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  width: radius * 2,
                  height: radius * 2,
                  color: theme.colorScheme.surfaceVariant,
                  child: Icon(
                    Icons.person,
                    size: radius,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  width: radius * 2,
                  height: radius * 2,
                  color: theme.colorScheme.surfaceVariant,
                  child: Icon(
                    Icons.person,
                    size: radius,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            )
          : Icon(
              Icons.person,
              size: radius,
              color: theme.colorScheme.onSurfaceVariant,
            ),
    );

    if (onTap != null) {
      avatar = InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(radius),
        child: avatar,
      );
    }

    return Stack(
      children: [
        avatar,
        if (user.isVerified)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: radius * 0.6,
              height: radius * 0.6,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                shape: BoxShape.circle,
                border: Border.all(color: theme.colorScheme.surface, width: 2),
              ),
              child: Icon(
                Icons.check,
                size: radius * 0.3,
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
      ],
    );
  }
}
