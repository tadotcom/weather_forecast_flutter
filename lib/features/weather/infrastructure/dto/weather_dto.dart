import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/weather.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

/// OpenWeather APIのレスポンス全体を受け止めるDTO
@freezed
class WeatherResponseDto with _$WeatherResponseDto {
  const factory WeatherResponseDto({
    required List<WeatherItemDto> list,
  }) = _WeatherResponseDto;

  factory WeatherResponseDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseDtoFromJson(json);
}

@freezed
class WeatherItemDto with _$WeatherItemDto {
  const factory WeatherItemDto({
    required int dt,
    required MainDto main,
    required List<WeatherIconDto> weather,
  }) = _WeatherItemDto;

  const WeatherItemDto._();

  factory WeatherItemDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherItemDtoFromJson(json);

  Weather toDomain() {
    return Weather(
      date: DateTime.fromMillisecondsSinceEpoch(dt * 1000, isUtc: true).toLocal(),
      temp: main.temp,
      iconCode: weather.firstOrNull?.icon ?? '',
    );
  }
}

@freezed
class MainDto with _$MainDto {
  const factory MainDto({
    required double temp,
  }) = _MainDto;

  factory MainDto.fromJson(Map<String, dynamic> json) => _$MainDtoFromJson(json);
}

@freezed
class WeatherIconDto with _$WeatherIconDto {
  const factory WeatherIconDto({
    required String icon,
  }) = _WeatherIconDto;

  factory WeatherIconDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherIconDtoFromJson(json);
}