import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_details.freezed.dart';

/// A named link associated with an author (e.g. official website).
@freezed
abstract class AuthorLink with _$AuthorLink {
  const factory AuthorLink({
    required String title,
    required String url,
  }) = _AuthorLink;
}

/// Detailed domain entity for a single author fetched from /authors/{key}.json
@freezed
abstract class AuthorDetails with _$AuthorDetails {
  const factory AuthorDetails({
    required String key,
    required String name,
    String? personalName,
    String? birthDate,
    String? deathDate,
    String? bio,

    /// Photo IDs used to build cover URLs via the OpenLibrary covers API.
    @Default([]) List<int> photoIds,

    /// External links provided by OpenLibrary (e.g. official site, Wikipedia).
    @Default([]) List<AuthorLink> links,
  }) = _AuthorDetails;
}
