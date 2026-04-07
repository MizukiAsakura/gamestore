// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_title => 'Game Store';

  @override
  String get home_bottom_nav_bar_label => 'Home';

  @override
  String get application_bottom_nav_bar_label => 'Application';

  @override
  String get movie_bottom_nav_bar_label => 'Films';

  @override
  String get book_bottom_nav_bar_label => 'Book';
}
