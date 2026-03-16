import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_details.dart';

part 'author_details_model.freezed.dart';
part 'author_details_model.g.dart';

/// JSON model for a link object returned inside the author details response.
@freezed
abstract class AuthorLinkModel with _$AuthorLinkModel {
  const AuthorLinkModel._();

  const factory AuthorLinkModel({
    required String title,
    required String url,
  }) = _AuthorLinkModel;

  factory AuthorLinkModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorLinkModelFromJson(json);

  AuthorLink toDomain() => AuthorLink(title: title, url: url);
}

/// The bio field can be either a plain String or a nested object
/// {"type": "/type/text", "value": "..."}.
/// This converter normalises both shapes to a plain String.
class _BioConverter implements JsonConverter<String?, Object?> {
  const _BioConverter();

  @override
  String? fromJson(Object? json) {
    if (json == null) return null;
    if (json is String) return json;
    if (json is Map<String, dynamic>) return json['value'] as String?;
    return null;
  }

  @override
  Object? toJson(String? value) => value;
}

/// Data model for GET /authors/{key}.json
@freezed
abstract class AuthorDetailsModel with _$AuthorDetailsModel {
  const AuthorDetailsModel._();

  const factory AuthorDetailsModel({
    required String key,
    required String name,
    @JsonKey(name: 'personal_name') String? personalName,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'death_date') String? deathDate,
    @_BioConverter() String? bio,
    @Default([]) List<int> photos,
    @Default([]) List<AuthorLinkModel> links,
  }) = _AuthorDetailsModel;

  factory AuthorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsModelFromJson(json);

  /// Maps this model to the domain [AuthorDetails] entity.
  AuthorDetails toDomain() => AuthorDetails(
        key: key.replaceFirst('/authors/', ''),
        name: name,
        personalName: personalName,
        birthDate: birthDate,
        deathDate: deathDate,
        bio: bio,
        photoIds: photos.where((id) => id > 0).toList(),
        links: links.map((l) => l.toDomain()).toList(),
      );
}
