import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/weather_notifier.dart';


class WeatherScreen extends ConsumerStatefulWidget {
  final String city;
  final double? latitude;
  final double? longitude;

  const WeatherScreen({
    super.key,
    required this.city,
    this.latitude,
    this.longitude,
  });

  @override
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.latitude != null && widget.longitude != null) {
      Future.microtask(() {
        ref.read(weatherNotifierProvider(widget.city).notifier).fetchByLocation(
          widget.latitude!,
          widget.longitude!,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final weatherAsyncValue = ref.watch(weatherNotifierProvider(widget.city));

    return Scaffold(
      appBar: AppBar(title: Text('${widget.city}の天気')),
      body: weatherAsyncValue.when(
        data: (weatherList) {
          if (weatherList.isEmpty) {
            return const Center(child: Text('データがありません'));
          }
          return ListView.builder(
            itemCount: weatherList.length,
            itemBuilder: (context, index) {
              final weather = weatherList[index];
              final iconUrl =
                  'https://openweathermap.org/img/wn/${weather.iconCode}@2x.png';

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Image.network(
                    iconUrl,
                    width: 50,
                    height: 50,
                    errorBuilder: (_, __, ___) => const Icon(Icons.error),
                  ),
                  title: Text(
                    '${weather.date.month}/${weather.date.day} ${weather.date.hour.toString().padLeft(2, '0')}:00',
                  ),
                  trailing: Text(
                    '${weather.temp.toStringAsFixed(1)} ℃',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          );
        },

        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, color: Colors.red, size: 48),
              const SizedBox(height: 16),
              Text(error.toString()),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (widget.latitude != null && widget.longitude != null) {
                    ref.read(weatherNotifierProvider(widget.city).notifier).fetchByLocation(
                      widget.latitude!,
                      widget.longitude!,
                    );
                  } else {
                    ref.read(weatherNotifierProvider(widget.city).notifier).retry();
                  }
                },
                child: const Text('再試行'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}