import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_bloc.dart';

class ReloadFloatingActionButton extends StatelessWidget {
  const ReloadFloatingActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        BlocProvider.of<WeatherBloc>(context).add(GetWeatherEvent());
      },
      icon: Icon(
        Icons.replay_outlined,
        color: Color(0xff099477),
      ),
      label: Text(
        'Reload',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 16,
          color: Color(0xff099477),
        ),
      ),
      backgroundColor: Color(0xffFF999D),
    );
  }
}