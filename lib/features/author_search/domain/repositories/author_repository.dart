import 'package:fpdart/fpdart.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_details.dart';

/// Abstract repository interface for author-related operations.
/// Implemented in the data layer; depended on by use cases.
abstract interface class AuthorRepository {
  /// Searches authors by [query]. Returns a list of matching [Author] entities
  /// or a [Failure] if the operation fails.
  Future<Either<Failure, List<Author>>> searchAuthors(String query);

  /// Fetches full details for a single author by their OpenLibrary [key]
  /// (e.g. "OL26320A"). Returns an [AuthorDetails] entity or a [Failure].
  Future<Either<Failure, AuthorDetails>> getAuthorDetails(String key);
}
