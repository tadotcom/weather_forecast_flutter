// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseDtoImpl _$$WeatherResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseDtoImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => WeatherItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherResponseDtoImplToJson(
        _$WeatherResponseDtoImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$WeatherItemDtoImpl _$$WeatherItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherItemDtoImpl(
      dt: (json['dt'] as num).toInt(),
      main: MainDto.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherIconDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherItemDtoImplToJson(
        _$WeatherItemDtoImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
    };

_$MainDtoImpl _$$MainDtoImplFromJson(Map<String, dynamic> json) =>
    _$MainDtoImpl(
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$$MainDtoImplToJson(_$MainDtoImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
    };

_$WeatherIconDtoImpl _$$WeatherIconDtoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherIconDtoImpl(
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherIconDtoImplToJson(
        _$WeatherIconDtoImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
    };
