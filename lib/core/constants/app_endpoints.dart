/// OpenLibrary API endpoint constants.
abstract final class AppEndpoints {
  AppEndpoints._();

  static const String baseUrl = 'https://openlibrary.org';

  /// Search authors: GET /search/authors.json?q={query}
  static const String authorSearch = '/search/authors.json';

  /// Author details: GET /authors/{key}.json
  static String authorDetails(String key) => '/authors/$key.json';

  /// Author photo URL built from the author key (OLID).
  /// Size: S, M, L
  static String authorPhotoUrl(String olid, {String size = 'M'}) =>
      'https://covers.openlibrary.org/a/olid/$olid-$size.jpg';
}
