import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_work.freezed.dart';

/// Domain entity representing a single work (book) by an author.
@freezed
abstract class AuthorWork with _$AuthorWork {
  const factory AuthorWork({
    /// OpenLibrary work key (e.g. "OL45804W").
    required String key,
    required String title,

    /// Cover edition key used to build cover image URLs.
    String? coverEditionKey,

    /// Cover ID used with the OpenLibrary covers API.
    int? coverId,

    /// First publish year if available.
    int? firstPublishYear,
  }) = _AuthorWork;
}
