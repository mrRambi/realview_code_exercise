// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_works_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorWorkModel _$AuthorWorkModelFromJson(Map<String, dynamic> json) =>
    _AuthorWorkModel(
      key: json['key'] as String,
      title: json['title'] as String,
      coverEditionKey: json['cover_edition_key'] as String?,
      coverId: (json['cover_id'] as num?)?.toInt(),
      firstPublishYear: (json['first_publish_year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AuthorWorkModelToJson(_AuthorWorkModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'cover_edition_key': instance.coverEditionKey,
      'cover_id': instance.coverId,
      'first_publish_year': instance.firstPublishYear,
    };

_AuthorWorksResponseModel _$AuthorWorksResponseModelFromJson(
  Map<String, dynamic> json,
) => _AuthorWorksResponseModel(
  entries:
      (json['entries'] as List<dynamic>?)
          ?.map((e) => AuthorWorkModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AuthorWorksResponseModelToJson(
  _AuthorWorksResponseModel instance,
) => <String, dynamic>{'entries': instance.entries};
