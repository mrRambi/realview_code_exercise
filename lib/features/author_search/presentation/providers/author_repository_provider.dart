import 'package:realview_code_exercise/core/logging/logging.dart';
import 'package:realview_code_exercise/core/providers/network_providers.dart';
import 'package:realview_code_exercise/features/author_search/data/datasources/author_remote_datasource.dart';
import 'package:realview_code_exercise/features/author_search/data/repositories/author_repository_impl.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'author_repository_provider.g.dart';

/// Wires [AuthorRemoteDatasourceImpl] → [AuthorRepositoryImpl] and exposes
/// the result as [AuthorRepository] (domain interface).
@Riverpod(keepAlive: true)
AuthorRepository authorRepository(Ref ref) {
  final apiClient = ref.watch(authorApiClientProvider);
  final datasource = AuthorRemoteDatasourceImpl(apiClient);
  return AuthorRepositoryImpl(
    datasource: datasource,
    logger: const AppLoggerImpl(),
  );
}
