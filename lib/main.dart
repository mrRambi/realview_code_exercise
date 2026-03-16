import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/core/widgets/no_connection_banner.dart';
import 'package:realview_code_exercise/features/author_search/presentation/pages/author_search_page.dart';
import 'package:realview_code_exercise/l10n/app_localizations.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

/// Root widget. [ProviderScope] is required for Riverpod to work.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.data,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const NoConnectionBanner(child: AuthorSearchPage()),
    );
  }
}
