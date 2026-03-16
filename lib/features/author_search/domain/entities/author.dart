import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';

/// Domain entity representing a book author.
/// Free of any serialization or framework concerns.
@freezed
abstract class Author with _$Author {
  const factory Author({
    /// OpenLibrary author key (e.g. "OL26320A").
    required String key,
    required String name,
    String? birthDate,
    String? topWork,
    int? workCount,

    /// OLID used to build the photo URL via the covers API.
    String? photoId,
  }) = _Author;
}
