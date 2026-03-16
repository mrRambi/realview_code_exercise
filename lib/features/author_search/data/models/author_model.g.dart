// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) => _AuthorModel(
  key: json['key'] as String,
  name: json['name'] as String,
  birthDate: json['birth_date'] as String?,
  topWork: json['top_work'] as String?,
  workCount: (json['work_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$AuthorModelToJson(_AuthorModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'birth_date': instance.birthDate,
      'top_work': instance.topWork,
      'work_count': instance.workCount,
    };
