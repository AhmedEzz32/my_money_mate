import 'package:responsive_adaptive_app/utils/language/language.dart';
import 'package:responsive_adaptive_app/utils/services/_service_interface.dart';
import 'package:responsive_adaptive_app/utils/services/storage_service.dart';
import 'package:intl/intl.dart' as intl;

class SettingService extends ServiceInterface {
  
  final StorageService _storageService = StorageService();
  
  final String languageKeyName = 'language';

  @override
  String get name => 'SettingService';

  @override
  Future initialize() async {
    dlog('initialize');

    _loadLanguage();
  }

  // ----------------- Locale -------------------------

  bool get isRTL => langIsRTL(language.lang);
  bool langIsRTL(String languageCode) => intl.Bidi.isRtlLanguage(languageCode);

  Language? Function()? getUserLanguageHook;

  Language Function() getUserLanguage = () {
    Language? userLang = SettingService().getUserLanguageHook?.call();
    if (userLang != null) {
      return userLang;
    }
    
    if (SettingService().hasSavedLanguage) {
      return SettingService().language;
    }
    return SettingService().defaultUserLanguage;
  };
  
  final Language defaultUserLanguage = Language.english;

  late Language _lang;
  Language get language => _lang;
  set language(Language lang) {
    _lang = lang;
    _storageService.saveString(languageKeyName, lang.toString());
    // TODO: update locale in server
    notifyListeners();

    dlog('Saved Locale : ${lang.toString()}');
  }
  bool get hasSavedLanguage => _storageService.getString(languageKeyName) != null;
  Language get changeLanguage {
    int index = SettingService().language.index;
    index++;
    if (index >= Language.values.length) {
      index = 0;
    }
    language = Language.values[index];
    return language;
  }
  Language get nextLanguage {
    int index = SettingService().language.index;
    index++;
    if (index >= Language.values.length) {
      index = 0;
    }
    return Language.values[index];
  }

  void _loadLanguage() {
    String? loadedLang = _storageService.getString(languageKeyName);
    if (loadedLang != null) {
      language = Language.fromString(loadedLang.toLowerCase()) ?? defaultUserLanguage;
    } else {
      language = defaultUserLanguage;
      // Note: remove saved language key if user not selected lang.
      _storageService.remove(languageKeyName);
    }
    notifyListeners();

    dlog('Loaded Language : $loadedLang');
  }

  void setNextLanguage() {
    language = nextLanguage;
    notifyListeners();
  }

  // ----------------- Instance -------------------------

  SettingService.init();
  static SettingService? instance;
  factory SettingService() => instance ??= SettingService.init();
}