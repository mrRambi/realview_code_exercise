import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_search_page.dart';
import 'package:realview_code_exercise/features/author_search/domain/repositories/author_repository.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_repository_provider.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/popular_authors_chips.dart';

import '../../../../helpers/widget_test_helpers.dart';

class MockAuthorRepository extends Mock implements AuthorRepository {}

void main() {
  late MockAuthorRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthorRepository();
    when(() => mockRepository.searchAuthors(any()))
        .thenAnswer((_) async => Right(AuthorSearchPage(numFound: 0, authors: [])));
  });

  ProviderContainer makeContainer() => ProviderContainer(
        overrides: [
          authorRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );

  group('PopularAuthorsChips', () {
    testWidgets('renders "Popular authors" button', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          PopularAuthorsChips(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Popular authors'), findsOneWidget);
    });

    testWidgets('shows people_outline icon on button', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          PopularAuthorsChips(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.people_outline), findsOneWidget);
    });

    testWidgets('opens menu and shows author chips on button tap',
        (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          PopularAuthorsChips(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Popular authors'));
      await tester.pumpAndSettle();

      // Menu should be open and show author names
      expect(find.text('Stephen King'), findsOneWidget);
      expect(find.text('Jane Austen'), findsOneWidget);
    });

    testWidgets('selecting a chip updates the controller text', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          PopularAuthorsChips(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Popular authors'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Stephen King'));
      await tester.pumpAndSettle();

      expect(controller.text, 'Stephen King');
    });

    testWidgets('selecting a chip triggers search for that author',
        (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          PopularAuthorsChips(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Popular authors'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Stephen King'));
      await tester.pumpAndSettle();

      verify(() => mockRepository.searchAuthors('Stephen King')).called(1);
    });

    testWidgets('menu closes after chip is selected', (tester) async {
      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          PopularAuthorsChips(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Popular authors'));
      await tester.pumpAndSettle();

      expect(find.text('Stephen King'), findsOneWidget);

      await tester.tap(find.text('Stephen King'));
      await tester.pumpAndSettle();

      // After selecting, the menu overlay should be gone
      expect(find.text('Jane Austen'), findsNothing);
    });

    testWidgets('search state reflects selected author', (tester) async {
      when(() => mockRepository.searchAuthors('Mark Twain')).thenAnswer(
        (_) async => Right(AuthorSearchPage(numFound: 0, authors: [])),
      );

      final container = makeContainer();
      addTearDown(container.dispose);

      final controller = TextEditingController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        buildTestAppWithOverrides(
          PopularAuthorsChips(controller: controller),
          container,
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Popular authors'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Mark Twain'));
      await tester.pumpAndSettle();

      final state = container.read(authorSearchProvider);
      expect(state.hasValue, isTrue);
    });
  });
}
