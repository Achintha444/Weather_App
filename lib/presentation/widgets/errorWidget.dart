import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_bloc.dart';

class WeatherErrorWidget extends StatelessWidget {
  const WeatherErrorWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'UNEXPECTED'.toUpperCase(),
                style: TextStyle(
                  color: Color(0xff099477),
                  fontSize: 30,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 3,
                bottom: 3,
              ),
            ),
            Center(
              child: Text(
                'Error'.toUpperCase(),
                style: TextStyle(
                  color: Color(0xff099477),
                  fontSize: 30,
                  letterSpacing: 25,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
            ),
            Center(
              child: Text(
                'Please Try Again!'.toUpperCase(),
                style: TextStyle(
                  color: Color(0xff099477),
                  fontSize: 10,
                  letterSpacing:7,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
            ),
            FloatingActionButton(
              child: Icon(
                Icons.replay,
                size: 30,
                color: Color(0xffFF999D),
              ),
              backgroundColor:Color(0xff099477),
              onPressed: () {
                _dispatchEvent(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _dispatchEvent(BuildContext context) {
    BlocProvider.of<WeatherBloc>(context).add(GetWeatherEvent());
  }
}
