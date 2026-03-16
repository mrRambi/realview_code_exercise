import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realview_code_exercise/features/author_search/domain/entities/author_work.dart';

part 'author_works_response_model.freezed.dart';
part 'author_works_response_model.g.dart';

/// Data model for a single work entry in GET /authors/{key}/works.json
@freezed
abstract class AuthorWorkModel with _$AuthorWorkModel {
  const AuthorWorkModel._();

  const factory AuthorWorkModel({
    required String key,
    required String title,
    @JsonKey(name: 'cover_edition_key') String? coverEditionKey,
    @JsonKey(name: 'cover_id') int? coverId,
    @JsonKey(name: 'first_publish_year') int? firstPublishYear,
  }) = _AuthorWorkModel;

  factory AuthorWorkModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorWorkModelFromJson(json);

  AuthorWork toDomain() => AuthorWork(
        key: key.replaceFirst('/works/', ''),
        title: title,
        coverEditionKey: coverEditionKey,
        coverId: coverId,
        firstPublishYear: firstPublishYear,
      );
}

/// Response wrapper for GET /authors/{key}/works.json
@freezed
abstract class AuthorWorksResponseModel with _$AuthorWorksResponseModel {
  const AuthorWorksResponseModel._();

  const factory AuthorWorksResponseModel({
    @Default([]) List<AuthorWorkModel> entries,
  }) = _AuthorWorksResponseModel;

  factory AuthorWorksResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorWorksResponseModelFromJson(json);
}
