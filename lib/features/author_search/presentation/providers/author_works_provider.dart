import 'package:realview_code_exercise/features/author_search/domain/entities/author_work.dart';
import 'package:realview_code_exercise/features/author_search/domain/usecases/get_author_works.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'author_works_provider.g.dart';

/// Fetches the list of [AuthorWork]s for the given author [key].
/// Automatically cached and disposed by Riverpod when no longer watched.
@riverpod
Future<List<AuthorWork>> authorWorks(Ref ref, String key) async {
  final result = await GetAuthorWorks(
    ref.watch(authorRepositoryProvider),
  ).call(key);

  return result.fold(
    (failure) => throw failure,
    (works) => works,
  );
}
