import 'package:fpdart/fpdart.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_details.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_work.dart';

/// Abstract repository interface for author-related operations.
/// Implemented in the data layer; depended on by use cases.
abstract interface class AuthorRepository {
  /// Searches authors by [query] with optional pagination params.
  /// Returns an [AuthorSearchPage] with total count and matching authors,
  /// or a [Failure] if the operation fails.
  Future<Either<Failure, AuthorSearchPage>> searchAuthors(
    String query, {
    int offset = 0,
    int limit = 20,
  });

  /// Fetches full details for a single author by their OpenLibrary [key]
  /// (e.g. "OL26320A"). Returns an [AuthorDetails] entity or a [Failure].
  Future<Either<Failure, AuthorDetails>> getAuthorDetails(String key);

  /// Fetches works by author [key] with optional pagination.
  /// Returns a list of [AuthorWork] entities or a [Failure].
  Future<Either<Failure, List<AuthorWork>>> getAuthorWorks(
    String key, {
    int limit = 50,
    int offset = 0,
  });
}
