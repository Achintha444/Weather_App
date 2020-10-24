import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/weather_bloc.dart';
import 'widgets/errorWidget.dart';
import 'widgets/loadedWidget.dart';
import 'widgets/loadingWidget.dart';
import 'widgets/reloadFloatingActionButton.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (context) => WeatherBloc(),
      child: Scaffold(
        floatingActionButton: ReloadFloatingActionButton(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/1.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black12,
                BlendMode.darken,
              ),
            ),
          ),
          child: BlocConsumer<WeatherBloc, WeatherState>(
            listener: (context, state) {
              if (state is LoadedError) {
                final _snackBar = SnackBar(
                  content: Text(
                    state.error,
                    style: TextStyle(
                      color: Color(0xff099477),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  backgroundColor: Color(0xffFF999D),
                );
                Scaffold.of(context).showSnackBar(_snackBar);
              }
            },
            builder: (context, state) {
              if (state is Initial || state is Loading) {
                return LoadingWidget();
              } else if (state is Loaded) {
                return WeatherLoadedWidget(
                  weatherModel: state.weatherModel,
                );
              } else if (state is LoadedError) {
                return WeatherLoadedWidget(
                  weatherModel: state.weatherModel,
                );
              } else if(state is Error){
                return WeatherErrorWidget();
              }
            },
          ),
          /* add child content here */
        ),
      ),
    );
  }
}
