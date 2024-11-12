// Flutter imports:
import 'package:flutter/widgets.dart' show Locale;

enum Language {
  english(Locale('en')),
  arabicEgypt(Locale('ar', 'EG'));

  const Language(this.locale);

  final Locale locale;

  String get lang => locale.languageCode;
  String get country => locale.countryCode ?? '';
  String get localeString => locale.toString();

  String get getOriginalCountryCode {
    switch (this) {
      case Language.english:
        return 'US';
      case Language.arabicEgypt:
        return 'EG';
    }
  }

  String get name {
    switch (this) {
      case Language.english:
        return 'English';
      case Language.arabicEgypt:
        return 'العربية';
    }
  }

  String localizedName(Language lang) {
    switch (lang) {
      case Language.english:
        switch (this) {
          case Language.english:
            return 'English';
          case Language.arabicEgypt:
            return 'Arabic';
        }
      case Language.arabicEgypt:
        switch (this) {
          case Language.english:
            return 'الإنجليزية';
          case Language.arabicEgypt:
            return 'العربية';
        }
    }
  }

  String get code {
    switch (this) {
      case Language.english:
        return 'EN';
      case Language.arabicEgypt:
        return 'ع';
    }
  }

  @override
  String toString() => (country.isNotEmpty) ? '${lang}_$country' : lang;

  static Language? fromLocale(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return Language.english;
      case 'ar':
        return Language.arabicEgypt;
    }
    return null;
  }

  static Language? fromString(String lang) {
    switch (lang) {
      case 'en':
        return Language.english;
      case 'ar':
      case 'ar_eg':
        return Language.arabicEgypt;
    }
    return null;
  }

  String get flag {
    try {
      return (getOriginalCountryCode).replaceAllMapped(
        RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397)
      );
    } catch (e) {
      // Debug.e('[Error] [FlagHelper] [$e]');
      return '';
    }
  }

  // static Map<String, String> getSupportsLanguages() {
  //   return Language.values.fold(
  //     {},
  //     (previousValue, element) => previousValue..addEntries([MapEntry(element.lang, element.name)])
  //   );
  // }

  static String getFlagByCode(String countryCode) {
    try {
      return (countryCode).replaceAllMapped(
        RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397)
      );
    } catch (e) {
      // Debug.e('[Error] [FlagHelper] [$e]');
      return '';
    }
  }

}