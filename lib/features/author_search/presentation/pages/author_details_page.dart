import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/core/widgets/widgets.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_details.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_details_provider.dart';

/// Displays full details for a single author.
/// Accepts the author [key] and [name] for immediate AppBar title rendering
/// while the details are being fetched.
class AuthorDetailsPage extends ConsumerWidget {
  final String authorKey;
  final String authorName;
  final bool embedded;

  const AuthorDetailsPage({
    super.key,
    required this.authorKey,
    required this.authorName,
    this.embedded = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authorDetailsProvider(authorKey));

    final body = state.when(
      data: (details) => _AuthorDetailsContent(details: details),
      loading: () => const LoadingView(),
      error: (_, _) => ErrorView(
        onRetry: () => ref.invalidate(authorDetailsProvider(authorKey)),
      ),
    );

    if (embedded) return body;

    return Scaffold(
      appBar: AppBar(title: Text(authorName)),
      body: body,
    );
  }
}

class _AuthorDetailsContent extends StatelessWidget {
  final AuthorDetails details;

  const _AuthorDetailsContent({required this.details});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSizes.paddingM),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AuthorHeader(details: details),
          if (details.bio != null) ...[
            const SizedBox(height: AppSizes.paddingL),
            _Section(
              title: 'Biography',
              child: Text(details.bio!, style: AppTypography.bodyMedium),
            ),
          ],
          if (details.links.isNotEmpty) ...[
            const SizedBox(height: AppSizes.paddingL),
            _Section(
              title: 'Links',
              child: _LinksList(links: details.links),
            ),
          ],
        ],
      ),
    );
  }
}

class _AuthorHeader extends StatelessWidget {
  final AuthorDetails details;

  const _AuthorHeader({required this.details});

  @override
  Widget build(BuildContext context) {
    final photoId = details.photoIds.isNotEmpty ? details.photoIds.first : null;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _AuthorPhoto(photoId: photoId, name: details.name),
        const SizedBox(width: AppSizes.paddingM),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(details.name, style: AppTypography.headlineMedium),
              if (details.personalName != null &&
                  details.personalName != details.name)
                Text(details.personalName!, style: AppTypography.bodySmall),
              const SizedBox(height: AppSizes.paddingS),
              if (details.birthDate != null)
                _MetaRow(
                  icon: Icons.cake_outlined,
                  label: details.birthDate!,
                ),
              if (details.deathDate != null)
                _MetaRow(
                  icon: Icons.history_outlined,
                  label: details.deathDate!,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AuthorPhoto extends StatelessWidget {
  final int? photoId;
  final String name;

  const _AuthorPhoto({required this.photoId, required this.name});

  @override
  Widget build(BuildContext context) {
    if (photoId != null) {
      return CircleAvatar(
        radius: 48,
        backgroundImage: CachedNetworkImageProvider(
          AppEndpoints.authorPhotoUrl(photoId.toString(), size: 'L'),
        ),
        onBackgroundImageError: (_, _) {},
        backgroundColor: AppColors.primaryLight,
      );
    }

    return CircleAvatar(
      radius: 48,
      backgroundColor: AppColors.primaryLight,
      child: Text(
        name.isNotEmpty ? name[0].toUpperCase() : '?',
        style: AppTypography.headlineMedium.copyWith(color: AppColors.primary),
      ),
    );
  }
}

class _MetaRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const _MetaRow({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.paddingS / 2),
      child: Row(
        children: [
          Icon(icon, size: 14, color: AppColors.primaryMid),
          const SizedBox(width: 6),
          Text(label, style: AppTypography.bodySmall),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final Widget child;

  const _Section({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 3,
              height: 16,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            const SizedBox(width: 8),
            Text(title, style: AppTypography.titleMedium),
          ],
        ),
        const SizedBox(height: AppSizes.paddingS),
        child,
      ],
    );
  }
}

class _LinksList extends StatelessWidget {
  final List<AuthorLink> links;

  const _LinksList({required this.links});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: links
          .map(
            (link) => Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.paddingS / 2),
              child: Row(
                children: [
                  const Icon(Icons.link, size: 14, color: AppColors.primary),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      link.title,
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
