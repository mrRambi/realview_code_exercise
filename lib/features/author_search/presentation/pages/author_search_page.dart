import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/l10n/app_localizations.dart';
import 'package:realview_code_exercise/features/author_search/presentation/pages/author_details_page.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/selected_author_provider.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_list.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/author_search_bar.dart';
import 'package:realview_code_exercise/features/author_search/presentation/widgets/popular_authors_chips.dart';

/// Root page for the Book Author Search feature.
/// Uses a responsive layout: single column on narrow screens,
/// side-by-side panels on wide screens (>= [AppSizes.wideLayoutBreakpoint]).
class AuthorSearchPage extends ConsumerWidget {
  const AuthorSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
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

class _NarrowLayout extends StatefulWidget {
  const _NarrowLayout();

  @override
  State<_NarrowLayout> createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<_NarrowLayout> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSizes.paddingM,
            AppSizes.paddingM,
            AppSizes.paddingM,
            AppSizes.paddingS / 2,
          ),
          child: AuthorSearchBar(controller: _searchController),
        ),
        Padding(
          padding: const EdgeInsets.only(left: AppSizes.paddingS),
          child: PopularAuthorsChips(controller: _searchController),
        ),
        const Expanded(child: AuthorList()),
      ],
    );
  }
}

class _WideLayout extends StatefulWidget {
  final WidgetRef ref;

  const _WideLayout({required this.ref});

  @override
  State<_WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<_WideLayout> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selected = widget.ref.watch(selectedAuthorProvider);

    return Row(
      children: [
        SizedBox(
          width: AppSizes.wideLayoutLeftPanelWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSizes.paddingM,
                  AppSizes.paddingM,
                  AppSizes.paddingM,
                  AppSizes.paddingS / 2,
                ),
                child: AuthorSearchBar(controller: _searchController),
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.paddingS),
                child: PopularAuthorsChips(controller: _searchController),
              ),
              Expanded(
                child: AuthorList(
                  onAuthorTap: (author) => widget.ref
                      .read(selectedAuthorProvider.notifier)
                      .select(author),
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
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              color: AppColors.primaryLight,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person_outline,
              size: 36,
              color: AppColors.primaryMid,
            ),
          ),
          const SizedBox(height: AppSizes.paddingM),
          Text(
            AppLocalizations.of(context)!.selectAuthorHint,
            style: AppTypography.bodyMedium.copyWith(color: AppColors.textMuted),
          ),
        ],
      ),
    );
  }
}
