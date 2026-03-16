import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';

/// Search bar with debounced input that triggers [AuthorSearchNotifier.search].
class AuthorSearchBar extends ConsumerStatefulWidget {
  const AuthorSearchBar({super.key});

  @override
  ConsumerState<AuthorSearchBar> createState() => _AuthorSearchBarState();
}

class _AuthorSearchBarState extends ConsumerState<AuthorSearchBar> {
  final _controller = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(AppDurations.searchDebounce, () {
      ref.read(authorSearchProvider.notifier).search(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: _onChanged,
      decoration: const InputDecoration(
        hintText: AppStrings.searchHint,
        prefixIcon: Icon(Icons.search),
        suffixIcon: null,
      ),
      textInputAction: TextInputAction.search,
    );
  }
}
