import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/l10n/app_localizations.dart';

/// Wraps [child] in a [ProviderScope] + [MaterialApp] with localizations,
/// so that widget tests have a complete environment.
Widget buildTestApp(Widget child, {ProviderScope? scope}) {
  return scope ?? ProviderScope(child: _shell(child));
}

Widget _shell(Widget child) => MaterialApp(
  theme: AppTheme.data,
  localizationsDelegates: const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: AppLocalizations.supportedLocales,
  home: Scaffold(body: child),
);

/// Wraps [child] with overrides.
Widget buildTestAppWithOverrides(Widget child, ProviderContainer container) {
  return UncontrolledProviderScope(container: container, child: _shell(child));
}
