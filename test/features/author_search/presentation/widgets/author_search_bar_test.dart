import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_search_bar.dart';

import '../../../../helpers/widget_test_helpers.dart';

class MockAuthorRepository extends Mock implements AuthorRepository {}

void main() {
  late MockAuthorRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthorRepository();
    when(() => mockRepository.searchAuthors(any())).thenAnswer(
      (_) async => const Right(AuthorSearchPage(numFound: 0, authors: [])),
    );
  });

  ProviderContainer makeContainer() => ProviderContainer(
    overrides: [authorRepositoryProvider.overrideWithValue(mockRepository)],
  );

  group('AuthorSearchBar', () {
    testWidgets('renders a TextField', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorSearchBar(), container),
      );
      await tester.pumpAndSettle();

      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('shows search hint text', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorSearchBar(), container),
      );
      await tester.pumpAndSettle();

      expect(find.text('Search for an author...'), findsOneWidget);
    });

    testWidgets('shows search prefix icon', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorSearchBar(), container),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.search), findsOneWidget);
    });

    testWidgets('uses external controller when provided', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController(text: 'initial');
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          AuthorSearchBar(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('initial'), findsOneWidget);
    });

    testWidgets('triggers search after debounce when text is entered', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorSearchBar(), container),
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'tolkien');
      // Advance past the debounce duration (300ms)
      await tester.pump(const Duration(milliseconds: 400));

      verify(() => mockRepository.searchAuthors('tolkien')).called(1);
    });

    testWidgets('does not trigger search before debounce elapses', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorSearchBar(), container),
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'tolkien');
      // Do NOT advance past debounce
      await tester.pump(const Duration(milliseconds: 100));

      verifyNever(() => mockRepository.searchAuthors(any()));
    });

    testWidgets('updates notifier state to empty when text cleared', (
      tester,
    ) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(const AuthorSearchBar(), container),
      );
      await tester.pumpAndSettle();

      // Type then clear
      await tester.enterText(find.byType(TextField), 'tolkien');
      await tester.pump(const Duration(milliseconds: 400));

      await tester.enterText(find.byType(TextField), '');
      await tester.pump(const Duration(milliseconds: 400));

      final state = container.read(authorSearchProvider);
      expect(state.value?.authors, isEmpty);
    });
  });
}
