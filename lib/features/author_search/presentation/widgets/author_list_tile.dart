import 'package:flutter/material.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';

/// Displays a single [Author] in a list tile with avatar, name and metadata.
class AuthorListTile extends StatelessWidget {
  final Author author;

  const AuthorListTile({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSizes.paddingM,
        vertical: AppSizes.paddingS / 2,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSizes.paddingM,
          vertical: AppSizes.paddingS,
        ),
        leading: _AuthorAvatar(author: author),
        title: Text(author.name, style: AppTypography.titleMedium),
        subtitle: _AuthorSubtitle(author: author),
      ),
    );
  }
}

class _AuthorAvatar extends StatelessWidget {
  final Author author;

  const _AuthorAvatar({required this.author});

  @override
  Widget build(BuildContext context) {
    final photoId = author.photoId;

    if (photoId != null) {
      return CircleAvatar(
        radius: AppSizes.authorAvatarRadius,
        backgroundImage: NetworkImage(
          AppEndpoints.authorPhotoUrl(photoId),
        ),
        onBackgroundImageError: (_, _) {},
        backgroundColor: AppColors.primaryLight,
        child: null,
      );
    }

    return CircleAvatar(
      radius: AppSizes.authorAvatarRadius,
      backgroundColor: AppColors.primaryLight,
      child: Text(
        author.name.isNotEmpty ? author.name[0].toUpperCase() : '?',
        style: AppTypography.titleMedium.copyWith(color: AppColors.primary),
      ),
    );
  }
}

class _AuthorSubtitle extends StatelessWidget {
  final Author author;

  const _AuthorSubtitle({required this.author});

  @override
  Widget build(BuildContext context) {
    final parts = <String>[
      if (author.birthDate != null) author.birthDate!,
      if (author.workCount != null) '${author.workCount} ${AppStrings.works}',
    ];

    if (author.topWork != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (parts.isNotEmpty)
            Text(parts.join(' · '), style: AppTypography.bodySmall),
          Text(
            author.topWork!,
            style: AppTypography.bodySmall.copyWith(
              fontStyle: FontStyle.italic,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
    }

    return parts.isNotEmpty
        ? Text(parts.join(' · '), style: AppTypography.bodySmall)
        : const SizedBox.shrink();
  }
}
