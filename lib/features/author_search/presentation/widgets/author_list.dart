import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/error/failures.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/core/widgets/widgets.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_state.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list_tile.dart';
import 'package:realview_code_exercise/l10n/app_localizations.dart';

/// Displays the author search results, reacting to [authorSearchProvider] state.
class AuthorList extends ConsumerWidget {
  final void Function(Author)? onAuthorTap;

  const AuthorList({super.key, this.onAuthorTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authorSearchProvider);
    final l10n = AppLocalizations.of(context)!;

    return state.when(
      data: (searchState) => _AuthorListContent(
        searchState: searchState,
        onAuthorTap: onAuthorTap,
      ),
      loading: () => const LoadingView(),
      error: (error, _) => ErrorView(
        message: _errorMessage(error, l10n),
        onRetry: () => ref.invalidate(authorSearchProvider),
      ),
    );
  }

  String _errorMessage(Object error, AppLocalizations l10n) {
    return switch (error) {
      NoConnectionFailure() => l10n.errorNetwork,
      ConnectionTimeoutFailure() => l10n.errorTimeout,
      _ => l10n.errorGeneric,
    };
  }
}

class _AuthorListContent extends ConsumerStatefulWidget {
  final AuthorSearchState searchState;
  final void Function(Author)? onAuthorTap;

  const _AuthorListContent({required this.searchState, this.onAuthorTap});

  @override
  ConsumerState<_AuthorListContent> createState() => _AuthorListContentState();
}

class _AuthorListContentState extends ConsumerState<_AuthorListContent> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final pos = _scrollController.position;
    if (pos.pixels >= pos.maxScrollExtent - AppSizes.paginationScrollThreshold) {
      ref.read(authorSearchProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final authors = widget.searchState.authors;

    if (authors.isEmpty) return const _EmptyState();

    return ListView.builder(
      controller: _scrollController,
      itemCount: authors.length + (widget.searchState.isLoadingMore ? 1 : 0),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingS),
      itemBuilder: (_, index) {
        if (index == authors.length) {
          return Padding(
            padding: const EdgeInsets.all(AppSizes.paddingM),
            child: Center(
              child: LoadingAnimationWidget.fourRotatingDots(
                color: AppColors.primary,
                size: 32,
              ),
            ),
          );
        }
        return AuthorListTile(
          author: authors[index],
          onTap: widget.onAuthorTap != null
              ? () => widget.onAuthorTap!(authors[index])
              : null,
        );
      },
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              color: AppColors.primaryLight,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person_search,
              size: 36,
              color: AppColors.primaryMid,
            ),
          ),
          const SizedBox(height: AppSizes.paddingM),
          Text(
            l10n.searchHint,
            style: AppTypography.bodyMedium.copyWith(color: AppColors.textMuted),
          ),
        ],
      ),
    );
  }
}
