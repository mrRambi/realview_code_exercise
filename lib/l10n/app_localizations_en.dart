// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Book Author Search';

  @override
  String get searchHint => 'Search for an author...';

  @override
  String get noResults => 'No authors found.';

  @override
  String get errorGeneric => 'Something went wrong. Please try again.';

  @override
  String get errorNetwork => 'No internet connection.';

  @override
  String get errorTimeout => 'Request timed out.';

  @override
  String get retry => 'Retry';

  @override
  String get works => 'works';

  @override
  String get selectAuthorHint => 'Select an author to view details';

  @override
  String get biography => 'Biography';

  @override
  String get links => 'Links';

  @override
  String get worksSection => 'Works';

  @override
  String get noWorksFound => 'No works found.';

  @override
  String get couldNotLoadWorks => 'Could not load works.';

  @override
  String get popularAuthors => 'Popular authors';
}
