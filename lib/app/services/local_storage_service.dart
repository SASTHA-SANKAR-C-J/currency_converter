import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalStorageService {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  String? getString(String key) {
    return _prefs.getString(key);
  }

  Future<void> setJson(String key, Map<String, dynamic> json) async {
    await _prefs.setString(key, jsonEncode(json));
  }

  Map<String, dynamic>? getJson(String key) {
    final data = _prefs.getString(key);
    if (data == null) return null;
    return jsonDecode(data) as Map<String, dynamic>;
  }

  Future<void> setJsonList(String key, List<Map<String, dynamic>> list) async {
    await _prefs.setString(key, jsonEncode(list));
  }

  List<Map<String, dynamic>>? getJsonList(String key) {
    final data = _prefs.getString(key);
    if (data == null) return null;
    final decoded = jsonDecode(data) as List;
    return decoded.cast<Map<String, dynamic>>();
  }

  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  Future<void> clear() async {
    await _prefs.clear();
  }
}
