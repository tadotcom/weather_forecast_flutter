import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  final String city;
  const WeatherScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$cityの天気')),
      body: const Center(child: Text('ここに天気のリストを表示します')),
    );
  }
}