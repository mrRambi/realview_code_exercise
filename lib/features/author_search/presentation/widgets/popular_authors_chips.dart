import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/l10n/app_localizations.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';
import 'package:realview_code_exercise/features/author_search/presentation/providers/author_search_notifier.dart';

const _popularAuthors = [
  'Stephen King',
  'J.K. Rowling',
  'Agatha Christie',
  'George Orwell',
  'Ernest Hemingway',
  'Leo Tolstoy',
  'Fyodor Dostoevsky',
  'Gabriel García Márquez',
  'Toni Morrison',
  'Franz Kafka',
  'Jane Austen',
  'Mark Twain',
  'Virginia Woolf',
  'Haruki Murakami',
  'Cormac McCarthy',
];

/// A compact dropdown button that expands into a wrap of popular author chips.
/// Selecting a chip fills [controller] and triggers an immediate search.
class PopularAuthorsChips extends ConsumerStatefulWidget {
  final TextEditingController controller;

  const PopularAuthorsChips({super.key, required this.controller});

  @override
  ConsumerState<PopularAuthorsChips> createState() => _PopularAuthorsChipsState();
}

class _PopularAuthorsChipsState extends ConsumerState<PopularAuthorsChips> {
  final _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      controller: _menuController,
      crossAxisUnconstrained: false,
      style: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.surface),
        elevation: const WidgetStatePropertyAll(4),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        padding: const WidgetStatePropertyAll(EdgeInsets.all(AppSizes.paddingM)),
      ),
      menuChildren: [
        SizedBox(
          width: 320,
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: _popularAuthors.map((name) {
              return _AuthorChip(
                label: name,
                onTap: () {
                  _menuController.close();
                  widget.controller.text = name;
                  widget.controller.selection = TextSelection.fromPosition(
                    TextPosition(offset: name.length),
                  );
                  ref.read(authorSearchProvider.notifier).search(name);
                },
              );
            }).toList(),
          ),
        ),
      ],
      builder: (context, menuController, _) {
        return TextButton.icon(
          onPressed: () {
            if (menuController.isOpen) {
              menuController.close();
            } else {
              menuController.open();
            }
          },
          icon: const Icon(Icons.people_outline, size: 16),
          label: Text(AppLocalizations.of(context)!.popularAuthors),
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryMid,
            textStyle: AppTypography.bodySmall.copyWith(
              fontWeight: FontWeight.w500,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          ),
        );
      },
    );
  }
}

class _AuthorChip extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _AuthorChip({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.primary.withValues(alpha: 0.2)),
        ),
        child: Text(
          label,
          style: AppTypography.bodySmall.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
