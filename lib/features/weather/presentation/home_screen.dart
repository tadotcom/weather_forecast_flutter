import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _cities = [
    {'name': '東京', 'id': 'Tokyo'},
    {'name': '兵庫', 'id': 'Hyogo'},
    {'name': '大分', 'id': 'Oita'},
    {'name': '北海道', 'id': 'Hokkaido'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('都市を選択'),
      ),
      body: ListView.builder(
        itemCount: _cities.length,
        itemBuilder: (context, index) {
          final city = _cities[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                city['name']!,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                context.push('/weather?city=${city['id']}');
              },
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          LocationPermission permission = await Geolocator.checkPermission();
          if (permission == LocationPermission.denied) {
            permission = await Geolocator.requestPermission();
            if (permission == LocationPermission.denied) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('位置情報の権限が拒否されました')),
                );
              }
              return;
            }
          }

          if (permission == LocationPermission.deniedForever) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('設定から位置情報の権限を許可してください')),
              );
            }
            return;
          }

          try {
            if (context.mounted) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => const Center(child: CircularProgressIndicator()),
              );
            }

            final position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.low,
            );

            if (context.mounted) {
              Navigator.of(context).pop();
            }

            if (context.mounted) {
              context.push(
                '/weather?city=現在地&lat=${position.latitude}&lon=${position.longitude}',
              );
            }
          } catch (e) {
            if (context.mounted) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('現在地の取得に失敗しました: $e')),
              );
            }
          }
        },
        icon: const Icon(Icons.location_on),
        label: const Text('現在地から取得'),
      ),
    );
  }
}