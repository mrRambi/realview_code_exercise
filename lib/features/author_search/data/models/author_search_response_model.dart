import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realview_code_exercise/features/author_search/data/models/author_model.dart';

part 'author_search_response_model.freezed.dart';
part 'author_search_response_model.g.dart';

/// Top-level response from GET /search/authors.json?q={query}
@freezed
abstract class AuthorSearchResponseModel with _$AuthorSearchResponseModel {
  const factory AuthorSearchResponseModel({
    @JsonKey(name: 'numFound') required int numFound,
    @JsonKey(name: 'docs') required List<AuthorModel> docs,
  }) = _AuthorSearchResponseModel;

  factory AuthorSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorSearchResponseModelFromJson(json);
}
