// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorLinkModel _$AuthorLinkModelFromJson(Map<String, dynamic> json) =>
    _AuthorLinkModel(
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$AuthorLinkModelToJson(_AuthorLinkModel instance) =>
    <String, dynamic>{'title': instance.title, 'url': instance.url};

_AuthorDetailsModel _$AuthorDetailsModelFromJson(Map<String, dynamic> json) =>
    _AuthorDetailsModel(
      key: json['key'] as String,
      name: json['name'] as String,
      personalName: json['personal_name'] as String?,
      birthDate: json['birth_date'] as String?,
      deathDate: json['death_date'] as String?,
      bio: const _BioConverter().fromJson(json['bio']),
      photos:
          (json['photos'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      links:
          (json['links'] as List<dynamic>?)
              ?.map((e) => AuthorLinkModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AuthorDetailsModelToJson(_AuthorDetailsModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'personal_name': instance.personalName,
      'birth_date': instance.birthDate,
      'death_date': instance.deathDate,
      'bio': const _BioConverter().toJson(instance.bio),
      'photos': instance.photos,
      'links': instance.links,
    };
