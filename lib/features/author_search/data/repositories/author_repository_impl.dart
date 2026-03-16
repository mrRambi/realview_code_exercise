import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/core/logging/logging.dart';
import 'package:realview_code_exercise/features/author_search/data/datasources/author_remote_datasource.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_details.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_work.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';

/// Concrete implementation of [AuthorRepository].
/// Catches data-layer exceptions and maps them to domain [Failure] types.
final class AuthorRepositoryImpl implements AuthorRepository {
  final AuthorRemoteDatasource _datasource;
  final AppLogger _logger;

  const AuthorRepositoryImpl({
    required AuthorRemoteDatasource datasource,
    required AppLogger logger,
  }) : _datasource = datasource,
       _logger = logger;

  @override
  Future<Either<Failure, AuthorSearchPage>> searchAuthors(
    String query, {
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final (numFound, models) = await _datasource.searchAuthors(
        query,
        offset: offset,
        limit: limit,
      );
      return Right(AuthorSearchPage(
        numFound: numFound,
        authors: models.map((m) => m.toDomain()).toList(),
      ));
    } on AuthorSearchException catch (e) {
      _logger.error('AuthorRepositoryImpl.searchAuthors failed', error: e);
      return const Left(AuthorSearchFailure());
    } on DioException catch (e) {
      _logger.error('AuthorRepositoryImpl network error', error: e);
      return Left(_mapDioException(e));
    } catch (e, st) {
      _logger.error('AuthorRepositoryImpl unexpected error', error: e, stackTrace: st);
      return Left(UnknownFailure(e));
    }
  }

  @override
  Future<Either<Failure, AuthorDetails>> getAuthorDetails(String key) async {
    try {
      final model = await _datasource.getAuthorDetails(key);
      return Right(model.toDomain());
    } on AuthorDetailsException catch (e) {
      _logger.error('AuthorRepositoryImpl.getAuthorDetails failed', error: e);
      return const Left(AuthorDetailsFailure());
    } on DioException catch (e) {
      _logger.error('AuthorRepositoryImpl network error', error: e);
      return Left(_mapDioException(e));
    } catch (e, st) {
      _logger.error('AuthorRepositoryImpl unexpected error', error: e, stackTrace: st);
      return Left(UnknownFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<AuthorWork>>> getAuthorWorks(
    String key, {
    int limit = 50,
    int offset = 0,
  }) async {
    try {
      final models = await _datasource.getAuthorWorks(
        key,
        limit: limit,
        offset: offset,
      );
      return Right(models.map((m) => m.toDomain()).toList());
    } on AuthorWorksException catch (e) {
      _logger.error('AuthorRepositoryImpl.getAuthorWorks failed', error: e);
      return const Left(AuthorWorksFailure());
    } on DioException catch (e) {
      _logger.error('AuthorRepositoryImpl network error', error: e);
      return Left(_mapDioException(e));
    } catch (e, st) {
      _logger.error('AuthorRepositoryImpl unexpected error', error: e, stackTrace: st);
      return Left(UnknownFailure(e));
    }
  }

  Failure _mapDioException(DioException e) => switch (e.type) {
    DioExceptionType.connectionError => const NoConnectionFailure(),
    DioExceptionType.connectionTimeout ||
    DioExceptionType.receiveTimeout ||
    DioExceptionType.sendTimeout => const ConnectionTimeoutFailure(),
    DioExceptionType.cancel => const RequestCancelledFailure(),
    _ => ServerFailure(statusCode: e.response?.statusCode, apiMessage: e.message),
  };
}
