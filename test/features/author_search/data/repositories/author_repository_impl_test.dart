import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/core/logging/logging.dart';
import 'package:realview_code_exercise/features/author_search/data/datasources/author_remote_datasource.dart';
import 'package:realview_code_exercise/features/author_search/data/models/author_model.dart';
import 'package:realview_code_exercise/features/author_search/data/repositories/author_repository_impl.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';

class MockAuthorRemoteDatasource extends Mock implements AuthorRemoteDatasource {}
class MockAppLogger extends Mock implements AppLogger {}

void main() {
  late AuthorRepositoryImpl sut;
  late MockAuthorRemoteDatasource mockDatasource;
  late MockAppLogger mockLogger;

  setUp(() {
    mockDatasource = MockAuthorRemoteDatasource();
    mockLogger = MockAppLogger();
    sut = AuthorRepositoryImpl(
      datasource: mockDatasource,
      logger: mockLogger,
    );

    // Silence logger calls in all tests
    when(() => mockLogger.error(any(), error: any(named: 'error'), stackTrace: any(named: 'stackTrace')))
        .thenReturn(null);
  });

  const tQuery = 'tolkien';

  final tAuthorModels = [
    const AuthorModel(
      key: '/authors/OL26320A',
      name: 'J.R.R. Tolkien',
      birthDate: '3 January 1892',
      topWork: 'The Hobbit',
      workCount: 403,
    ),
  ];

  final tAuthors = [
    const Author(
      key: 'OL26320A',
      name: 'J.R.R. Tolkien',
      birthDate: '3 January 1892',
      topWork: 'The Hobbit',
      workCount: 403,
      photoId: 'OL26320A',
    ),
  ];

  group('searchAuthors', () {
    test('should return AuthorSearchPage when datasource succeeds', () async {
      // Arrange
      when(() => mockDatasource.searchAuthors(tQuery))
          .thenAnswer((_) async => (1, tAuthorModels));

      // Act
      final result = await sut.searchAuthors(tQuery);

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (_) => fail('Expected Right'),
        (page) {
          expect(page, isA<AuthorSearchPage>());
          expect(page.numFound, 1);
          expect(page.authors, tAuthors);
        },
      );
      verify(() => mockDatasource.searchAuthors(tQuery)).called(1);
    });

    test('should return AuthorSearchFailure when datasource throws AuthorSearchException', () async {
      // Arrange
      when(() => mockDatasource.searchAuthors(tQuery))
          .thenThrow(const AuthorSearchException());

      // Act
      final result = await sut.searchAuthors(tQuery);

      // Assert
      expect(result, const Left(AuthorSearchFailure()));
    });

    test('should return NoConnectionFailure on DioException connectionError', () async {
      // Arrange
      when(() => mockDatasource.searchAuthors(tQuery)).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          type: DioExceptionType.connectionError,
        ),
      );

      // Act
      final result = await sut.searchAuthors(tQuery);

      // Assert
      expect(result, const Left(NoConnectionFailure()));
    });

    test('should return ConnectionTimeoutFailure on DioException connectionTimeout', () async {
      // Arrange
      when(() => mockDatasource.searchAuthors(tQuery)).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          type: DioExceptionType.connectionTimeout,
        ),
      );

      // Act
      final result = await sut.searchAuthors(tQuery);

      // Assert
      expect(result, const Left(ConnectionTimeoutFailure()));
    });

    test('should return ServerFailure on DioException with server response', () async {
      // Arrange
      when(() => mockDatasource.searchAuthors(tQuery)).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          type: DioExceptionType.badResponse,
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 500,
          ),
        ),
      );

      // Act
      final result = await sut.searchAuthors(tQuery);

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<ServerFailure>());
          expect((failure as ServerFailure).statusCode, 500);
        },
        (_) => fail('Expected Left'),
      );
    });

    test('should return UnknownFailure on unexpected exception', () async {
      // Arrange
      when(() => mockDatasource.searchAuthors(tQuery))
          .thenThrow(Exception('unexpected'));

      // Act
      final result = await sut.searchAuthors(tQuery);

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (_) => fail('Expected Left'),
      );
    });
  });
}
