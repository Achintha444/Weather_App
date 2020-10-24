import 'package:flutter/widgets.dart';

import '../../db/model/weatherModel.dart';

class WeatherText extends StatelessWidget {
  const WeatherText({
    Key key,
    @required this.type,
    @required this.value,
    @required this.timeStamp,
  }) : super(key: key);

  final String type;
  final String value;
  final String timeStamp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              this.type+' : ',
              style: TextStyle(
                color: Color(0xff006059),
                fontSize: 24,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              this.value,
              style: TextStyle(
                color: Color(0xff006059),
                fontSize: 24,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            ('Time : ' + this.timeStamp).toUpperCase(),
            style: TextStyle(
              color: Color(0xff099477),
              fontSize: 12,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ],
    );
  }
}