import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/features/author_search/presentation/pages/author_search_page.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

/// Root widget. [ProviderScope] is required for Riverpod to work.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Author Search',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.data,
      home: const AuthorSearchPage(),
    );
  }
}
