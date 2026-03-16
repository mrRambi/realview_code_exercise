import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';

part 'author_search_page.freezed.dart';

/// Domain value object representing one page of author search results.
@freezed
abstract class AuthorSearchPage with _$AuthorSearchPage {
  const factory AuthorSearchPage({
    required int numFound,
    required List<Author> authors,
  }) = _AuthorSearchPage;
}
