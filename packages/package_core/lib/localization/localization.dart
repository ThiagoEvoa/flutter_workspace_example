import '../package_core.dart';
import './translations/translations.dart';

class Localization {
  Localization(this._locale);

  final Locale _locale;

  static Localization of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization)!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': translationEn,
  };

  static List<String> languages() => _localizedValues.keys.toList();

  get locale => _locale;
  get localizedValues => _localizedValues;

  String get title => localizedValues[locale.languageCode]!['title']!;
}
