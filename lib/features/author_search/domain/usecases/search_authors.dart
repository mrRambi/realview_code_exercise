import 'package:fpdart/fpdart.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';

/// Use case: search for authors by name query.
/// Single responsibility: delegates to [AuthorRepository] and returns the result.
final class SearchAuthors {
  final AuthorRepository _repository;

  const SearchAuthors(this._repository);

  Future<Either<Failure, AuthorSearchPage>> call(
    String query, {
    int offset = 0,
    int limit = 20,
  }) =>
      _repository.searchAuthors(query, offset: offset, limit: limit);
}
