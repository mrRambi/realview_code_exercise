import 'package:flutter/material.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_search_bar.dart';

/// Root page for the Book Author Search feature.
class AuthorSearchPage extends StatelessWidget {
  const AuthorSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.appTitle)),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(AppSizes.paddingM),
            child: AuthorSearchBar(),
          ),
          Expanded(child: AuthorList()),
        ],
      ),
    );
  }
}
