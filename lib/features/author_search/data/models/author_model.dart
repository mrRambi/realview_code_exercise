import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author.dart';

part 'author_model.freezed.dart';
part 'author_model.g.dart';

/// Data model for a single author entry from the OpenLibrary search response.
/// Maps directly to the JSON structure returned by /search/authors.json
@freezed
abstract class AuthorModel with _$AuthorModel {
  const factory AuthorModel({
    required String key,
    required String name,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'top_work') String? topWork,
    @JsonKey(name: 'work_count') int? workCount,
  }) = _AuthorModel;
  const AuthorModel._();

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);

  /// Maps this data model to the domain [Author] entity.
  Author toDomain() => Author(
    key: key.replaceFirst('/authors/', ''),
    name: name,
    birthDate: birthDate,
    topWork: topWork,
    workCount: workCount,
    photoId: key.replaceFirst('/authors/', ''),
  );
}
