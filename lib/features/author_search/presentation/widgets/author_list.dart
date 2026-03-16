import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/core/widgets/widgets.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list_tile.dart';

/// Displays the author search results, reacting to [authorSearchProvider] state.
class AuthorList extends ConsumerWidget {
  const AuthorList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authorSearchProvider);

    return state.when(
      data: (authors) => _AuthorListContent(authors: authors),
      loading: () => const LoadingView(),
      error: (error, _) => ErrorView(
        message: _errorMessage(error),
        onRetry: () => ref.invalidate(authorSearchProvider),
      ),
    );
  }

  String _errorMessage(Object error) {
    return switch (error) {
      _ when error.toString().contains('NoConnection') => AppStrings.errorNetwork,
      _ when error.toString().contains('Timeout') => AppStrings.errorTimeout,
      _ => AppStrings.errorGeneric,
    };
  }
}

class _AuthorListContent extends StatelessWidget {
  final List<Author> authors;

  const _AuthorListContent({required this.authors});

  @override
  Widget build(BuildContext context) {
    if (authors.isEmpty) {
      return const _EmptyState();
    }

    return ListView.builder(
      itemCount: authors.length,
      padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingS),
      itemBuilder: (_, index) => AuthorListTile(author: authors[index]),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.person_search, size: 64, color: AppColors.textMuted),
          const SizedBox(height: AppSizes.paddingM),
          Text(AppStrings.searchHint, style: AppTypography.bodyMedium),
        ],
      ),
    );
  }
}
