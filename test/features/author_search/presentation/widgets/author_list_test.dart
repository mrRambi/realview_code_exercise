import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:realview_code_exercise/core/error/error.dart';
import 'package:realview_code_exercise/core/widgets/error_view.dart';
import 'package:realview_code_exercise/core/widgets/loading_view.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list_tile.dart';

import '../../../../helpers/widget_test_helpers.dart';

class MockAuthorRepository extends Mock implements AuthorRepository {}

void main() {
  late MockAuthorRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthorRepository();
  });

  ProviderContainer makeContainer() => ProviderContainer(
    overrides: [authorRepositoryProvider.overrideWithValue(mockRepository)],
  );

  final tAuthors = [
    const Author(key: 'OL1A', name: 'Author One', workCount: 10),
    const Author(key: 'OL2A', name: 'Author Two', workCount: 5),
  ];

  group('AuthorList', () {
    testWidgets('shows empty state (search icon) on initial load', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorList(), container),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.person_search), findsOneWidget);
      expect(find.text('Search for an author...'), findsOneWidget);
    });

    testWidgets('shows LoadingView while search is loading', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      // Use a completer so the future never resolves, keeping the loading state.
      final completer = Completer<Either<Failure, AuthorSearchPage>>();
      when(
        () => mockRepository.searchAuthors(any()),
      ).thenAnswer((_) => completer.future);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorList(), container),
      );
      await tester.pump();

      // Trigger search — provider enters AsyncLoading.
      unawaited(
        container.read(authorSearchProvider.notifier).search('tolkien'),
      );
      await tester.pump();

      expect(find.byType(LoadingView), findsOneWidget);

      // Resolve to avoid leaking the completer.
      completer.complete(
        const Right(AuthorSearchPage(numFound: 0, authors: [])),
      );
      await tester.pumpAndSettle();
    });

    testWidgets('shows list of AuthorListTile when search returns results', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      when(() => mockRepository.searchAuthors('tolkien')).thenAnswer(
        (_) async => Right(AuthorSearchPage(numFound: 2, authors: tAuthors)),
      );

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorList(), container),
      );
      await tester.pump();

      await container.read(authorSearchProvider.notifier).search('tolkien');
      await tester.pumpAndSettle();

      expect(find.byType(AuthorListTile), findsNWidgets(2));
      expect(find.text('Author One'), findsOneWidget);
      expect(find.text('Author Two'), findsOneWidget);
    });

    testWidgets('shows ErrorView with generic message on unknown failure', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      when(
        () => mockRepository.searchAuthors('error'),
      ).thenAnswer((_) async => const Left(AuthorSearchFailure()));

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorList(), container),
      );
      await tester.pump();

      await container.read(authorSearchProvider.notifier).search('error');
      await tester.pumpAndSettle();

      expect(find.byType(ErrorView), findsOneWidget);
      expect(
        find.text('Something went wrong. Please try again.'),
        findsOneWidget,
      );
    });

    testWidgets('shows network error message on NoConnectionFailure', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      when(
        () => mockRepository.searchAuthors('offline'),
      ).thenAnswer((_) async => const Left(NoConnectionFailure()));

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorList(), container),
      );
      await tester.pump();

      await container.read(authorSearchProvider.notifier).search('offline');
      await tester.pumpAndSettle();

      expect(find.text('No internet connection.'), findsOneWidget);
    });

    testWidgets('shows timeout error message on ConnectionTimeoutFailure', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      when(
        () => mockRepository.searchAuthors('slow'),
      ).thenAnswer((_) async => const Left(ConnectionTimeoutFailure()));

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorList(), container),
      );
      await tester.pump();

      await container.read(authorSearchProvider.notifier).search('slow');
      await tester.pumpAndSettle();

      expect(find.text('Request timed out.'), findsOneWidget);
    });

    testWidgets('calls onAuthorTap with correct author when tile tapped', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      when(() => mockRepository.searchAuthors('tolkien')).thenAnswer(
        (_) async => Right(AuthorSearchPage(numFound: 2, authors: tAuthors)),
      );

      Author? tappedAuthor;
      await tester.pumpWidget(
        buildTestAppWithOverrides(
          AuthorList(onAuthorTap: (a) => tappedAuthor = a),
          container,
        ),
      );
      await tester.pump();

      await container.read(authorSearchProvider.notifier).search('tolkien');
      await tester.pumpAndSettle();

      await tester.tap(find.text('Author One'));
      await tester.pump();

      expect(tappedAuthor, equals(tAuthors[0]));
    });

    testWidgets('retry button triggers provider invalidation', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      when(
        () => mockRepository.searchAuthors(any()),
      ).thenAnswer((_) async => const Left(AuthorSearchFailure()));

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorList(), container),
      );
      await tester.pump();

      await container.read(authorSearchProvider.notifier).search('error');
      await tester.pumpAndSettle();

      // After tapping retry the provider is invalidated and rebuilds
      await tester.tap(find.text('Retry'));
      await tester.pump();

      // Provider should return to initial state after invalidation
      expect(container.read(authorSearchProvider).hasValue, isTrue);
    });
  });
}
