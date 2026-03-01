import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        onPressed: () {
          // TODO: 後ほど、現在地を取得して遷移する処理を実装します
          context.push('/weather?city=CurrentLocation');
        },
        icon: const Icon(Icons.location_on),
        label: const Text('現在地から取得'),
      ),
    );
  }
}