import 'weather.dart';

/// 天気予報データを取得するためのインターフェース
abstract interface class WeatherRepository {
  /// 都市名（Tokyo, Hyogo, Oita, Hokkaido）から5日間の天気予報を取得する
  Future<List<Weather>> fetchForecastByCity(String city);

  /// 緯度経度から5日間の天気予報を取得する（応用課題の現在地用）
  Future<List<Weather>> fetchForecastByLocation({
    required double latitude,
    required double longitude,
  });
}