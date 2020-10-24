import 'package:flutter/cupertino.dart';

class WeatherModel {
  final String temperature;
  final String temperatureTimeStamp;
  final String ambient;
  final String ambientTimeStamp;
  final String pressure;
  final String pressureTimeStamp;
  final String humidity;
  final String humidityTimeStamp;

  WeatherModel({
    @required this.temperature,
    @required this.ambient,
    @required this.pressure,
    @required this.humidity,
    @required this.temperatureTimeStamp,
    @required this.ambientTimeStamp,
    @required this.pressureTimeStamp,
    @required this.humidityTimeStamp,
  });

  Map<String, dynamic> toJson() {
    return {
      'temperature': this.temperature,
      'temperatureTimeStamp': this.temperatureTimeStamp,
      'ambient': this.ambient,
      'ambientTimeStamp': this.ambientTimeStamp,
      'pressure': this.pressure,
      'pressureTimeStamp': this.pressureTimeStamp,
      'humidity': this.humidity,
      'humidityTimeStamp': this.humidityTimeStamp
    };
  }

  static WeatherModel fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temperature: json['temperature'],
      ambient: json['ambient'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      temperatureTimeStamp: json['temperatureTimeStamp'],
      ambientTimeStamp: json['ambientTimeStamp'],
      pressureTimeStamp: json['pressureTimeStamp'],
      humidityTimeStamp: json['humidityTimeStamp'],
    );
  }
}
