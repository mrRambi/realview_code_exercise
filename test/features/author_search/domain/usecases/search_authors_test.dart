import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';
import 'package:realview_code_exercise/features/author_search/domain/usecases/search_authors.dart';

class MockAuthorRepository extends Mock implements AuthorRepository {}

void main() {
  late SearchAuthors sut;
  late MockAuthorRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthorRepository();
    sut = SearchAuthors(mockRepository);
  });

  const tQuery = 'tolkien';

  final tAuthors = [
    const Author(
      key: 'OL26320A',
      name: 'J.R.R. Tolkien',
      birthDate: '3 January 1892',
      topWork: 'The Hobbit',
      workCount: 403,
    ),
  ];

  final tPage = AuthorSearchPage(numFound: 1, authors: tAuthors);

  group('SearchAuthors', () {
    test('should return AuthorSearchPage when repository call succeeds', () async {
      // Arrange
      when(() => mockRepository.searchAuthors(tQuery))
          .thenAnswer((_) async => Right(tPage));

      // Act
      final result = await sut(tQuery);

      // Assert
      expect(result, Right(tPage));
      verify(() => mockRepository.searchAuthors(tQuery)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return AuthorSearchFailure when repository returns failure', () async {
      // Arrange
      when(() => mockRepository.searchAuthors(tQuery))
          .thenAnswer((_) async => const Left(AuthorSearchFailure()));

      // Act
      final result = await sut(tQuery);

      // Assert
      expect(result, const Left(AuthorSearchFailure()));
      verify(() => mockRepository.searchAuthors(tQuery)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return NetworkFailure when there is no connection', () async {
      // Arrange
      when(() => mockRepository.searchAuthors(tQuery))
          .thenAnswer((_) async => const Left(NoConnectionFailure()));

      // Act
      final result = await sut(tQuery);

      // Assert
      expect(result, const Left(NoConnectionFailure()));
      verify(() => mockRepository.searchAuthors(tQuery)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should forward the exact query string to the repository', () async {
      // Arrange
      const tSpecificQuery = 'george orwell';
      when(() => mockRepository.searchAuthors(tSpecificQuery))
          .thenAnswer((_) async => Right(AuthorSearchPage(numFound: 0, authors: [])));

      // Act
      await sut(tSpecificQuery);

      // Assert
      verify(() => mockRepository.searchAuthors(tSpecificQuery)).called(1);
    });
  });
}
