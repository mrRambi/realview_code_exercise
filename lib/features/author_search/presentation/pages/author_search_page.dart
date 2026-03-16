import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/features/author_search/presentation/pages/author_details_page.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/selected_author_provider.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_search_bar.dart';

/// Root page for the Book Author Search feature.
/// Uses a responsive layout: single column on narrow screens,
/// side-by-side panels on wide screens (>= [AppSizes.wideLayoutBreakpoint]).
class AuthorSearchPage extends ConsumerWidget {
  const AuthorSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.appTitle)),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= AppSizes.wideLayoutBreakpoint) {
            return _WideLayout(ref: ref);
          }
          return const _NarrowLayout();
        },
      ),
    );
  }
}

class _NarrowLayout extends StatelessWidget {
  const _NarrowLayout();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(AppSizes.paddingM),
          child: AuthorSearchBar(),
        ),
        Expanded(child: AuthorList()),
      ],
    );
  }
}

class _WideLayout extends StatelessWidget {
  final WidgetRef ref;

  const _WideLayout({required this.ref});

  @override
  Widget build(BuildContext context) {
    final selected = ref.watch(selectedAuthorProvider);

    return Row(
      children: [
        SizedBox(
          width: AppSizes.wideLayoutLeftPanelWidth,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(AppSizes.paddingM),
                child: AuthorSearchBar(),
              ),
              Expanded(
                child: AuthorList(
                  onAuthorTap: (author) =>
                      ref.read(selectedAuthorProvider.notifier).select(author),
                ),
              ),
            ],
          ),
        ),
        const VerticalDivider(width: 1),
        Expanded(
          child: selected == null
              ? const _DetailPlaceholder()
              : AuthorDetailsPage(
                  authorKey: selected.key,
                  authorName: selected.name,
                  embedded: true,
                ),
        ),
      ],
    );
  }
}

class _DetailPlaceholder extends StatelessWidget {
  const _DetailPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.person_outline, size: 64, color: AppColors.textMuted),
          const SizedBox(height: AppSizes.paddingM),
          Text(AppStrings.selectAuthorHint, style: AppTypography.bodyMedium),
        ],
      ),
    );
  }
}
