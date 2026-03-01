import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../domain/weather.dart';
import '../domain/weather_repository.dart';
import 'dto/weather_dto.dart';
import 'weather_local_cache.dart';

class OpenWeatherRepository implements WeatherRepository {
  final Dio _dio;
  final WeatherLocalCache _cache;

  final String _apiKey = dotenv.env['OPEN_WEATHER_API_KEY'] ??
      (throw Exception('APIキーが.envに設定されていません'));

  OpenWeatherRepository({
    required Dio dio,
    required WeatherLocalCache cache,
  })  : _dio = dio,
        _cache = cache;

  static const _baseUrl = 'https://api.openweathermap.org/data/2.5/forecast';

  @override
  Future<List<Weather>> fetchForecastByCity(String city) async {
    final cachedDto = await _cache.getCache(city);
    if (cachedDto != null) {
      return cachedDto.list.map((dto) => dto.toDomain()).toList();
    }

    try {
      final response = await _dio.get(
        _baseUrl,
        queryParameters: {
          'q': city,
          'units': 'metric',
          'lang': 'ja',
          'appid': _apiKey,
        },
      );

      final dto = WeatherResponseDto.fromJson(response.data as Map<String, dynamic>);
      await _cache.saveCache(city: city, dto: dto);
      return dto.list.map((e) => e.toDomain()).toList();
    } on DioException catch (e) {
      throw Exception('通信に失敗しました。: ${e.message}');
    }
  }

  @override
  Future<List<Weather>> fetchForecastByLocation({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await _dio.get(
        _baseUrl,
        queryParameters: {
          'lat': latitude,
          'lon': longitude,
          'units': 'metric',
          'lang': 'ja',
          'appid': _apiKey,
        },
      );

      final dto = WeatherResponseDto.fromJson(response.data as Map<String, dynamic>);
      return dto.list.map((e) => e.toDomain()).toList();
    } on DioException catch (e) {
      throw Exception('通信に失敗しました。: ${e.message}');
    }
  }
}