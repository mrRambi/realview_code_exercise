import 'package:fpdart/fpdart.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';

/// Use case: search for authors by name query.
/// Single responsibility: delegates to [AuthorRepository] and returns the result.
final class SearchAuthors {
  final AuthorRepository _repository;

  const SearchAuthors(this._repository);

  Future<Either<Failure, List<Author>>> call(String query) =>
      _repository.searchAuthors(query);
}
