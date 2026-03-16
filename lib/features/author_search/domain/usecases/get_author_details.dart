import 'package:fpdart/fpdart.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_details.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';

/// Use case: fetch full details for a single author by their OpenLibrary key.
final class GetAuthorDetails {
  final AuthorRepository _repository;

  const GetAuthorDetails(this._repository);

  Future<Either<Failure, AuthorDetails>> call(String key) =>
      _repository.getAuthorDetails(key);
}
