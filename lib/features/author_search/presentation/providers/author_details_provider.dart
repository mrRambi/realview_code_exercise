import 'package:realview_code_exercise/features/author_search/domain/entities/author_details.dart';
import 'package:realview_code_exercise/features/author_search/domain/usecases/get_author_details.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'author_details_provider.g.dart';

/// Fetches full [AuthorDetails] for the given [key].
/// Automatically cached and disposed by Riverpod when no longer watched.
@riverpod
Future<AuthorDetails> authorDetails(Ref ref, String key) async {
  final result = await GetAuthorDetails(
    ref.watch(authorRepositoryProvider),
  ).call(key);

  return result.fold(
    (failure) => throw failure,
    (details) => details,
  );
}
