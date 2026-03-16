import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realview_code_exercise/core/widgets/error_view.dart';

import '../../../../helpers/widget_test_helpers.dart';

void main() {
  group('ErrorView', () {
    testWidgets('shows error icon', (tester) async {
      await tester.pumpWidget(buildTestApp(const ErrorView()));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.error_outline), findsOneWidget);
    });

    testWidgets('shows default generic message when no message provided',
        (tester) async {
      await tester.pumpWidget(buildTestApp(const ErrorView()));
      await tester.pumpAndSettle();

      expect(find.text('Something went wrong. Please try again.'),
          findsOneWidget);
    });

    testWidgets('shows custom message when provided', (tester) async {
      const customMessage = 'Custom error occurred';
      await tester.pumpWidget(
        buildTestApp(const ErrorView(message: customMessage)),
      );
      await tester.pumpAndSettle();

      expect(find.text(customMessage), findsOneWidget);
    });

    testWidgets('does not show retry button when onRetry is null',
        (tester) async {
      await tester.pumpWidget(buildTestApp(const ErrorView()));
      await tester.pumpAndSettle();

      expect(find.text('Retry'), findsNothing);
    });

    testWidgets('shows retry button when onRetry is provided', (tester) async {
      await tester.pumpWidget(
        buildTestApp(ErrorView(onRetry: () {})),
      );
      await tester.pumpAndSettle();

      expect(find.text('Retry'), findsOneWidget);
    });

    testWidgets('calls onRetry when retry button is tapped', (tester) async {
      var retryCalled = false;
      await tester.pumpWidget(
        buildTestApp(ErrorView(onRetry: () => retryCalled = true)),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Retry'));
      await tester.pump();

      expect(retryCalled, isTrue);
    });
  });
}
