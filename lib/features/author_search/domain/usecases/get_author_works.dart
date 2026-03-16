import 'package:fpdart/fpdart.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_work.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';

/// Use case: fetch works for a single author by their OpenLibrary key.
final class GetAuthorWorks {
  final AuthorRepository _repository;

  const GetAuthorWorks(this._repository);

  Future<Either<Failure, List<AuthorWork>>> call(
    String key, {
    int limit = 50,
    int offset = 0,
  }) =>
      _repository.getAuthorWorks(key, limit: limit, offset: offset);
}
