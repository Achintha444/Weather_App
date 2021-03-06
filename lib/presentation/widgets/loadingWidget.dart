import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 20),
      height: (MediaQuery.of(context).size.height),
      child: Center(
        child: CircularProgressIndicator(
          key: Key('circularProgressIndicator'),
          strokeWidth: 8,
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xff099477)),
        ),
      ),
    );
  }
}