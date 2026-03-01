import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'dto/weather_dto.dart';

class WeatherLocalCache {
  final SharedPreferences _prefs;

  WeatherLocalCache(this._prefs);

  String _getCacheKey(String city) => 'weather_cache_$city';
  String _getDateKey(String city) => 'weather_date_$city';

  Future<void> saveCache({required String city, required WeatherResponseDto dto}) async {
    final today = _getTodayString();
    await _prefs.setString(_getCacheKey(city), jsonEncode(dto.toJson()));
    await _prefs.setString(_getDateKey(city), today);
  }

  Future<WeatherResponseDto?> getCache(String city) async {
    final today = _getTodayString();
    final savedDate = _prefs.getString(_getDateKey(city));

    if (savedDate == today) {
      final jsonString = _prefs.getString(_getCacheKey(city));
      if (jsonString != null) {
        final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
        return WeatherResponseDto.fromJson(jsonMap);
      }
    }
    return null;
  }

  String _getTodayString() {
    return DateTime.now().toIso8601String().split('T').first;
  }
}