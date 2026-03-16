import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/presentation/pages/author_details_page.dart';

/// Displays a single [Author] in a list tile with avatar, name and metadata.
class AuthorListTile extends StatelessWidget {
  final Author author;
  final VoidCallback? onTap;

  const AuthorListTile({super.key, required this.author, this.onTap});

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
        trailing: const Icon(Icons.chevron_right, size: 18, color: AppColors.primaryMid),
        onTap: onTap ??
            () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AuthorDetailsPage(
                  authorKey: author.key,
                  authorName: author.name,
                ),
              ),
            ),
      ),
    );
  }
}

class _AuthorAvatar extends StatefulWidget {
  final Author author;

  const _AuthorAvatar({required this.author});

  @override
  State<_AuthorAvatar> createState() => _AuthorAvatarState();
}

class _AuthorAvatarState extends State<_AuthorAvatar> {
  bool _imageError = false;

  @override
  Widget build(BuildContext context) {
    final photoId = widget.author.photoId;

    if (photoId != null && !_imageError) {
      return CircleAvatar(
        radius: AppSizes.authorAvatarRadius,
        backgroundImage: CachedNetworkImageProvider(
          AppEndpoints.authorPhotoUrl(photoId),
        ),
        onBackgroundImageError: (_, _) {
          if (mounted) setState(() => _imageError = true);
        },
        backgroundColor: AppColors.primaryLight,
        child: null,
      );
    }

    return CircleAvatar(
      radius: AppSizes.authorAvatarRadius,
      backgroundColor: AppColors.primaryLight,
      child: Icon(Icons.person, color: AppColors.primary),
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
