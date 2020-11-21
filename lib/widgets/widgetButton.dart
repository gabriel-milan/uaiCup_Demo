import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final String currentTemp;
  final String targetTemp;
  final IconData icon;

  WidgetButton(
      {@required this.padding,
      @required this.backgroundColor,
      @required this.currentTemp,
      @required this.targetTemp,
      @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding, // bottom
        child: Container(
            decoration: BoxDecoration(
              // Box color and border radius
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // Box content
              children: <Widget>[
                Icon(
                  this.icon,
                  size: 50,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Text(
                  "Current:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                Text(
                  currentTemp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text(
                  "Target:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                Text(
                  targetTemp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            )));
  }
}
