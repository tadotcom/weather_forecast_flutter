import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/core_providers.dart';
import '../domain/weather.dart';
import '../domain/weather_repository.dart';
import '../infrastructure/open_weather_repository.dart';
import '../infrastructure/weather_local_cache.dart';

part 'weather_notifier.g.dart';

@riverpod
WeatherLocalCache weatherLocalCache(WeatherLocalCacheRef ref) {
  return WeatherLocalCache(ref.watch(sharedPreferencesProvider));
}

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  return OpenWeatherRepository(
    dio: ref.watch(dioProvider),
    cache: ref.watch(weatherLocalCacheProvider),
  );
}

@riverpod
class WeatherNotifier extends _$WeatherNotifier {

  @override
  FutureOr<List<Weather>> build(String city) async {
    final repository = ref.watch(weatherRepositoryProvider);
    return repository.fetchForecastByCity(city);
  }

  Future<void> retry() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(weatherRepositoryProvider);
      return repository.fetchForecastByCity(city);
    });
  }

  Future<void> fetchByLocation(double lat, double lon) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(weatherRepositoryProvider);
      return repository.fetchForecastByLocation(latitude: lat, longitude: lon);
    });
  }
}