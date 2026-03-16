import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';

class MockAuthorRepository extends Mock implements AuthorRepository {}

void main() {
  late MockAuthorRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthorRepository();
  });

  /// Creates a [ProviderContainer] with [authorRepositoryProvider] overridden
  /// by [mockRepository], so no real network calls are made.
  ProviderContainer makeContainer() => ProviderContainer(
        overrides: [
          authorRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );

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

  group('AuthorSearchNotifier', () {
    test('initial state is AsyncData with empty list', () {
      // Arrange
      final container = makeContainer();
      addTearDown(container.dispose);

      // Act
      final state = container.read(authorSearchProvider);

      // Assert
      expect(state, const AsyncData<List<Author>>([]));
    });

    test('emits AsyncData with authors when search succeeds', () async {
      // Arrange
      when(() => mockRepository.searchAuthors(tQuery))
          .thenAnswer((_) async => Right(tAuthors));
      final container = makeContainer();
      addTearDown(container.dispose);

      // Act
      await container.read(authorSearchProvider.notifier).search(tQuery);

      // Assert
      final state = container.read(authorSearchProvider);
      expect(state, AsyncData<List<Author>>(tAuthors));
    });

    test('emits AsyncError with failure when search fails', () async {
      // Arrange
      when(() => mockRepository.searchAuthors(tQuery))
          .thenAnswer((_) async => const Left(AuthorSearchFailure()));
      final container = makeContainer();
      addTearDown(container.dispose);

      // Act
      await container.read(authorSearchProvider.notifier).search(tQuery);

      // Assert
      final state = container.read(authorSearchProvider);
      expect(state.hasError, true);
      expect(state.error, isA<AuthorSearchFailure>());
    });

    test('resets to empty AsyncData when query is empty', () async {
      // Arrange — first perform a successful search
      when(() => mockRepository.searchAuthors(tQuery))
          .thenAnswer((_) async => Right(tAuthors));
      final container = makeContainer();
      addTearDown(container.dispose);
      await container.read(authorSearchProvider.notifier).search(tQuery);

      // Act — clear the search
      await container.read(authorSearchProvider.notifier).search('');

      // Assert
      expect(container.read(authorSearchProvider), const AsyncData<List<Author>>([]));
      // Repository should not be called for empty query
      verify(() => mockRepository.searchAuthors(tQuery)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('resets to empty AsyncData when query is whitespace only', () async {
      // Arrange
      final container = makeContainer();
      addTearDown(container.dispose);

      // Act
      await container.read(authorSearchProvider.notifier).search('   ');

      // Assert
      expect(container.read(authorSearchProvider), const AsyncData<List<Author>>([]));
      verifyZeroInteractions(mockRepository);
    });

    test('emits AsyncError with NoConnectionFailure on network failure', () async {
      // Arrange
      when(() => mockRepository.searchAuthors(tQuery))
          .thenAnswer((_) async => const Left(NoConnectionFailure()));
      final container = makeContainer();
      addTearDown(container.dispose);

      // Act
      await container.read(authorSearchProvider.notifier).search(tQuery);

      // Assert
      final state = container.read(authorSearchProvider);
      expect(state.hasError, true);
      expect(state.error, isA<NoConnectionFailure>());
    });
  });
}
