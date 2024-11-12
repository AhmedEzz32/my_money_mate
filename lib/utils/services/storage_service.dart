// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import '_service_interface.dart';

class StorageService extends ServiceInterface {

  @override
  String get name => 'Storage';

  late SharedPreferences _preferences;

  @override
  Future initialize() async {
    dlog('Start');

    _preferences = await SharedPreferences.getInstance();

    dlog('Done');
  }

  // key Opertaions
  Future<bool> remove(String key) async {
    return _preferences.remove(key);
  }

  Set<String> keys() {
    return _preferences.getKeys();
  }

  bool has(String key) {
    return _preferences.containsKey(key);
  }

  // saving
  Future<bool> saveBool(String key, bool value) async {
    return _preferences.setBool(key, value);
  }

  Future<bool> saveString(String key, String value) async {
    return _preferences.setString(key, value);
  }

  Future<bool> saveInt(String key, int value) async {
    return _preferences.setInt(key, value);
  }

  Future<bool> saveDouble(String key, double value) async {
    return _preferences.setDouble(key, value);
  }

  Future<bool> saveList(String key, List<String> value) async {
    return _preferences.setStringList(key, value);
  }


  ///for any get operation from data storage service it's the caller responsibility to handle null cases
  bool? getBool(String name) {
    try {
      return _preferences.getBool(name);
    } on Exception catch (_) {
      dlog('unknown variable: $name');
    }
    return null;
  }

  String? getString(String name) {
    try {
      return _preferences.getString(name);
    } on Exception catch (_) {
      dlog('unknown variable: $name');
    }
    return null;
  }

  int? getInt(String name) {
    try {
      return _preferences.getInt(name);
    } on Exception catch (_) {
      dlog('unknown variable: $name');
    }
    return null;
  }

  double? getDouble(String name) {
    try {
      return _preferences.getDouble(name);
    } on Exception catch (_) {
      dlog('unknown variable: $name');
    }
    return null;
  }

  List<String>? getList(String name) {
    try {
      return _preferences.getStringList(name);
    } on Exception catch (_) {
      dlog('unknown variable: $name');
    }
    return null;
  }



  // singleton
  StorageService.init();
  static StorageService? instance;
  factory StorageService() => instance ??= StorageService.init();
}
