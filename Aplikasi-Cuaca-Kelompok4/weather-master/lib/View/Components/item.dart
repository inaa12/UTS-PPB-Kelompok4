import 'package:flutter/material.dart';
import 'package:weather/Model/weatherModel.dart';

class Item extends StatelessWidget {
  final WeeklyWeather item;
  final int day;
  Item({required this.item, required this.day});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: myHeight * 0.015, horizontal: myWidth * 0.07),
      child: Container(
        height: myHeight * 0.11,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(24)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$day April',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 17),
                ),
                Text(
                  item.day ??'',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  item.mainTemp?.replaceAll('°C', '') ??'',
                  style: TextStyle(color: Colors.white, fontSize: 55),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '°C',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text('')
                  ],
                ),
              ],
            ),
            Image.asset(
              item.mainImg ??'',
              height: myHeight * 0.05,
              width: myWidth * 0.1,
            )
          ],
        ),
      ),
    );
  }
}
