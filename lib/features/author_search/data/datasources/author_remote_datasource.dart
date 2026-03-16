import 'package:realview_code_exercise/features/author_search/data/datasources/author_api_client.dart';
import 'package:realview_code_exercise/features/author_search/data/models/author_model.dart';
import 'package:realview_code_exercise/core/error/error.dart';

/// Abstract contract for the author remote data source.
abstract interface class AuthorRemoteDatasource {
  /// Fetches authors matching [query] from the OpenLibrary API.
  /// Throws [AuthorSearchException] on failure.
  Future<List<AuthorModel>> searchAuthors(String query);
}

/// Implementation backed by [AuthorApiClient] (Retrofit + Dio).
final class AuthorRemoteDatasourceImpl implements AuthorRemoteDatasource {
  final AuthorApiClient _apiClient;

  const AuthorRemoteDatasourceImpl(this._apiClient);

  @override
  Future<List<AuthorModel>> searchAuthors(String query) async {
    try {
      final response = await _apiClient.searchAuthors(query);
      return response.docs;
    } catch (_) {
      throw const AuthorSearchException();
    }
  }
}
