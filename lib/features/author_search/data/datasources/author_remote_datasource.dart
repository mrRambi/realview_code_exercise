import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/data/datasources/author_api_client.dart';
import 'package:realview_code_exercise/features/author_search/data/models/author_details_model.dart';
import 'package:realview_code_exercise/features/author_search/data/models/author_model.dart';

/// Abstract contract for the author remote data source.
abstract interface class AuthorRemoteDatasource {
  /// Fetches authors matching [query] from the OpenLibrary API.
  /// Returns a record of (numFound, docs). Throws [AuthorSearchException] on failure.
  Future<(int numFound, List<AuthorModel> docs)> searchAuthors(
    String query, {
    int offset = 0,
    int limit = 20,
  });

  /// Fetches full details for a single author by their OpenLibrary [key].
  /// Throws [AuthorDetailsException] on failure.
  Future<AuthorDetailsModel> getAuthorDetails(String key);
}

/// Implementation backed by [AuthorApiClient] (Retrofit + Dio).
final class AuthorRemoteDatasourceImpl implements AuthorRemoteDatasource {
  final AuthorApiClient _apiClient;

  const AuthorRemoteDatasourceImpl(this._apiClient);

  @override
  Future<(int, List<AuthorModel>)> searchAuthors(
    String query, {
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final response = await _apiClient.searchAuthors(
        query,
        offset: offset,
        limit: limit,
      );
      return (response.numFound, response.docs);
    } catch (_) {
      throw const AuthorSearchException();
    }
  }

  @override
  Future<AuthorDetailsModel> getAuthorDetails(String key) async {
    try {
      return await _apiClient.getAuthorDetails(key);
    } catch (_) {
      throw const AuthorDetailsException();
    }
  }
}
