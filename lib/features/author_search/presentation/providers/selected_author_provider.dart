import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_author_provider.g.dart';

/// Holds the currently selected [Author] for the wide-layout right panel.
/// Null means no author is selected (placeholder is shown).
@riverpod
class SelectedAuthor extends _$SelectedAuthor {
  @override
  Author? build() => null;

  void select(Author author) => state = author;
  void clear() => state = null;
}
