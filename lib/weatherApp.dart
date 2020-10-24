import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherApp/presentation/weatherPage.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}