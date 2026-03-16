import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/usecases/search_authors.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'author_search_notifier.g.dart';

/// Manages the author search state as [AsyncValue<List<Author>>].
/// Initial state is an empty list (idle — no search performed yet).
@riverpod
class AuthorSearchNotifier extends _$AuthorSearchNotifier {
  @override
  AsyncValue<List<Author>> build() => const AsyncData([]);

  /// Executes a search for [query]. Clears results for empty input.
  Future<void> search(String query) async {
    final trimmed = query.trim();

    if (trimmed.isEmpty) {
      state = const AsyncData([]);
      return;
    }

    state = const AsyncLoading();

    final useCase = SearchAuthors(ref.read(authorRepositoryProvider));
    final result = await useCase(trimmed);

    state = result.fold(
      (failure) => AsyncError(failure, StackTrace.current),
      AsyncData.new,
    );
  }
}
