// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorSearchResponseModel _$AuthorSearchResponseModelFromJson(
  Map<String, dynamic> json,
) => _AuthorSearchResponseModel(
  numFound: (json['numFound'] as num).toInt(),
  docs: (json['docs'] as List<dynamic>)
      .map((e) => AuthorModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AuthorSearchResponseModelToJson(
  _AuthorSearchResponseModel instance,
) => <String, dynamic>{'numFound': instance.numFound, 'docs': instance.docs};
