import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realview_code_exercise/core/widgets/loading_view.dart';

import '../../../../helpers/widget_test_helpers.dart';

void main() {
  group('LoadingView', () {
    testWidgets('renders without error', (tester) async {
      await tester.pumpWidget(buildTestApp(const LoadingView()));
      await tester.pump();

      expect(find.byType(LoadingView), findsOneWidget);
    });

    testWidgets('is centered on screen', (tester) async {
      await tester.pumpWidget(buildTestApp(const LoadingView()));
      await tester.pump();

      expect(find.byWidgetPredicate((w) => w is Center), findsWidgets);
    });
  });
}
