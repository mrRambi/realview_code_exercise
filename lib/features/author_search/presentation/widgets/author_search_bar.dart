import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';

/// Search bar with debounced input that triggers [AuthorSearchNotifier.search].
///
/// If [controller] is provided, it is used directly (and not disposed here).
/// Otherwise an internal controller is created and managed internally.
class AuthorSearchBar extends ConsumerStatefulWidget {
  final TextEditingController? controller;

  const AuthorSearchBar({super.key, this.controller});

  @override
  ConsumerState<AuthorSearchBar> createState() => _AuthorSearchBarState();
}

class _AuthorSearchBarState extends ConsumerState<AuthorSearchBar> {
  late final TextEditingController _controller;
  late final bool _ownsController;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _ownsController = widget.controller == null;
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    if (_ownsController) _controller.dispose();
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
