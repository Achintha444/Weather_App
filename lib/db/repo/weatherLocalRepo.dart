import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherApp/util/Errors.dart';
import '../../util/util.dart';

import '../model/weatherModel.dart';

class WeatherLocalRepo {
  static Future<void> setWeather(WeatherModel weatherModel) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(
      WEATHER_KEY,
      json.encode(
        weatherModel.toJson(),
      ),
    );
  }

  static Future<WeatherModel> getWeatherModel() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final String weatherModelString =
        sharedPreferences.getString(WEATHER_KEY);
    if (weatherModelString != null) {
      Map<String, dynamic> _weatherModelJson = json.decode(weatherModelString);
      return WeatherModel.fromJson(_weatherModelJson);
      
    } else {
      throw CacheError('Error in the local cache');
    }
  }
}
