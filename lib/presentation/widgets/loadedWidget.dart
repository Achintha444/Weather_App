import 'package:flutter/widgets.dart';

import '../../db/model/weatherModel.dart';
import 'weatherText.dart';

class WeatherLoadedWidget extends StatelessWidget {
  final WeatherModel weatherModel;

  const WeatherLoadedWidget({Key key, @required this.weatherModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 16),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Weather Values',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff006059),
                ),
              ),
            ),
            SizedBox(height: 24),
            WeatherText(
              type: 'Temperature',
              value: weatherModel.temperature,
              timeStamp: weatherModel.temperatureTimeStamp,
            ),
            SizedBox(height: 24),
            WeatherText(
              type: 'Pressure',
              value: weatherModel.pressure,
              timeStamp: weatherModel.pressureTimeStamp,
            ),
            SizedBox(height: 24),
            WeatherText(
              type: 'Humidity',
              value: weatherModel.humidity,
              timeStamp: weatherModel.humidityTimeStamp,
            ),
            SizedBox(height: 24),
             WeatherText(
              type: 'Ambient',
              value: weatherModel.ambient,
              timeStamp: weatherModel.ambientTimeStamp,
            ),
          ],
        ),
      ),
    );
  }
}
