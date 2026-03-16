import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list_tile.dart';

import '../../../../helpers/widget_test_helpers.dart';

void main() {
  const tAuthor = Author(
    key: 'OL26320A',
    name: 'J.R.R. Tolkien',
    birthDate: '3 January 1892',
    topWork: 'The Hobbit',
    workCount: 403,
  );

  const tAuthorMinimal = Author(key: 'OL1A', name: 'Unknown Author');

  group('AuthorListTile', () {
    testWidgets('shows author name', (tester) async {
      await tester.pumpWidget(
        buildTestApp(const AuthorListTile(author: tAuthor)),
      );
      await tester.pumpAndSettle();

      expect(find.text('J.R.R. Tolkien'), findsOneWidget);
    });

    testWidgets('shows birth date in subtitle', (tester) async {
      await tester.pumpWidget(
        buildTestApp(const AuthorListTile(author: tAuthor)),
      );
      await tester.pumpAndSettle();

      expect(find.textContaining('3 January 1892'), findsOneWidget);
    });

    testWidgets('shows work count in subtitle', (tester) async {
      await tester.pumpWidget(
        buildTestApp(const AuthorListTile(author: tAuthor)),
      );
      await tester.pumpAndSettle();

      expect(find.textContaining('403'), findsOneWidget);
    });

    testWidgets('shows top work in subtitle', (tester) async {
      await tester.pumpWidget(
        buildTestApp(const AuthorListTile(author: tAuthor)),
      );
      await tester.pumpAndSettle();

      expect(find.text('The Hobbit'), findsOneWidget);
    });

    testWidgets('shows person icon avatar when no photoId', (tester) async {
      await tester.pumpWidget(
        buildTestApp(const AuthorListTile(author: tAuthorMinimal)),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.person), findsOneWidget);
    });

    testWidgets('shows chevron trailing icon', (tester) async {
      await tester.pumpWidget(
        buildTestApp(const AuthorListTile(author: tAuthor)),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    });

    testWidgets('calls onTap callback when tapped', (tester) async {
      var tapped = false;
      await tester.pumpWidget(
        buildTestApp(
          AuthorListTile(author: tAuthor, onTap: () => tapped = true),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byType(ListTile));
      await tester.pump();

      expect(tapped, isTrue);
    });

    testWidgets('renders with no optional fields set', (tester) async {
      await tester.pumpWidget(
        buildTestApp(const AuthorListTile(author: tAuthorMinimal)),
      );
      await tester.pumpAndSettle();

      expect(find.text('Unknown Author'), findsOneWidget);
    });
  });
}
