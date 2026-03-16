import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/usecases/search_authors.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'author_search_notifier.g.dart';

const _pageSize = 20;

/// Manages author search state with pagination and in-memory caching.
@riverpod
class AuthorSearchNotifier extends _$AuthorSearchNotifier {
  /// In-memory cache: trimmed query → accumulated author list (only stored when end reached).
  final Map<String, List<Author>> _cache = {};
  String _currentQuery = '';

  @override
  AsyncValue<AuthorSearchState> build() => const AsyncData(AuthorSearchState());

  /// Executes a new search for [query]. Clears results for empty input.
  /// Returns cached results immediately if the full list was fetched before.
  Future<void> search(String query) async {
    final trimmed = query.trim();
    _currentQuery = trimmed;

    if (trimmed.isEmpty) {
      state = const AsyncData(AuthorSearchState());
      return;
    }

    if (_cache.containsKey(trimmed)) {
      final cached = _cache[trimmed]!;
      state = AsyncData(AuthorSearchState(
        authors: cached,
        numFound: cached.length,
        currentOffset: cached.length,
        hasReachedEnd: true,
      ));
      return;
    }

    state = const AsyncLoading();

    final useCase = SearchAuthors(ref.read(authorRepositoryProvider));
    final result = await useCase(trimmed, offset: 0, limit: _pageSize);

    state = result.fold(
      (failure) => AsyncError(failure, StackTrace.current),
      (page) {
        final hasReachedEnd =
            page.authors.length >= page.numFound || page.authors.length < _pageSize;
        if (hasReachedEnd) _cache[trimmed] = page.authors;
        return AsyncData(AuthorSearchState(
          authors: page.authors,
          numFound: page.numFound,
          currentOffset: page.authors.length,
          hasReachedEnd: hasReachedEnd,
        ));
      },
    );
  }

  /// Loads the next page of results for the current query.
  /// No-op if already at end, currently loading more, or query is empty.
  Future<void> loadMore() async {
    final current = state.value;
    if (current == null || current.hasReachedEnd || current.isLoadingMore) return;
    if (_currentQuery.isEmpty) return;

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final useCase = SearchAuthors(ref.read(authorRepositoryProvider));
    final result = await useCase(
      _currentQuery,
      offset: current.currentOffset,
      limit: _pageSize,
    );

    result.fold(
      (failure) => state = AsyncData(current.copyWith(isLoadingMore: false)),
      (page) {
        final newList = <Author>[...current.authors, ...page.authors];
        final hasReachedEnd =
            newList.length >= page.numFound || page.authors.length < _pageSize;
        if (hasReachedEnd) _cache[_currentQuery] = newList;
        state = AsyncData(AuthorSearchState(
          authors: newList,
          numFound: page.numFound,
          currentOffset: newList.length,
          isLoadingMore: false,
          hasReachedEnd: hasReachedEnd,
        ));
      },
    );
  }
}
