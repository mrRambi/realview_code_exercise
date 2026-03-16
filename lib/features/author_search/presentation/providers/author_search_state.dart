import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';

part 'author_search_state.freezed.dart';

/// Holds the pagination state for the author search feature.
@freezed
abstract class AuthorSearchState with _$AuthorSearchState {
  const factory AuthorSearchState({
    @Default([]) List<Author> authors,
    @Default(0) int numFound,
    @Default(0) int currentOffset,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedEnd,
  }) = _AuthorSearchState;
}
