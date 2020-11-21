import 'package:uaiCup/colors/uaiColors.dart';
import 'package:uaiCup/icons/uaiCons.dart';
import 'package:flutter/material.dart';
import 'package:uaiCup/pages/report.dart';
import 'package:uaiCup/widgets/iconbox.dart';

class History extends StatelessWidget {
  final Color backgroundColor;
  final double widgetsBorder;

  History({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: UaiColors.blue2,
          title: new Text(
            "Histórico",
            style: TextStyle(
                color: UaiColors.white,
                fontSize: 30,
                fontWeight: FontWeight.normal,
                fontFamily: 'Fredoka'),
          ),
        ),
        body: Builder(
            builder: (context) => Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    // Filling background color
                    Container(
                      decoration: BoxDecoration(color: UaiColors.white),
                    ),
                    // Main column
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        // Vertical portion of the screen
                        Expanded(
                          flex: 1,
                          child: Container(
                            // Adding widgets horizontally
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    // Bluetooth widget
                                    child: GestureDetector(
                                      onTap: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (ctxt) => Report(
                                                    backgroundColor:
                                                        UaiColors.white,
                                                    widgetsBorder: 10,
                                                  )),
                                        )
                                      },
                                      child: HorizontalIconBox(
                                        text:
                                            "19/nov/2020 08:53:49\nBrinco 123",
                                        icon: Icon(
                                          UaiCons.milk,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        borderRadius: 20,
                                        iconTextPadding: 20,
                                        backgroundColor: UaiColors.blue2,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder, // left
                                            widgetsBorder, // top
                                            widgetsBorder / 2, // right
                                            widgetsBorder / 2),
                                        textColor: Colors.white,
                                        textSize: 25,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        // Vertical portion of the screen
                        Expanded(
                          flex: 1,
                          child: Container(
                            // Adding widgets horizontally
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    // Bluetooth widget
                                    child: GestureDetector(
                                      onTap: () {
                                        final snackBar = SnackBar(
                                          content: Text(
                                            "Desabilitado para demonstração!",
                                            style: TextStyle(
                                                color: UaiColors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: 'Fredoka'),
                                          ),
                                        );
                                        Scaffold.of(context)
                                            .showSnackBar(snackBar);
                                      },
                                      child: HorizontalIconBox(
                                        text:
                                            "19/nov/2020 08:24:56\nBrinco 122",
                                        icon: Icon(
                                          UaiCons.milk,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        borderRadius: 20,
                                        iconTextPadding: 20,
                                        backgroundColor: UaiColors.blue2,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder, // left
                                            widgetsBorder, // top
                                            widgetsBorder / 2, // right
                                            widgetsBorder / 2),
                                        textColor: Colors.white,
                                        textSize: 25,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        // Vertical portion of the screen
                        Expanded(
                          flex: 1,
                          child: Container(
                            // Adding widgets horizontally
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    // Bluetooth widget
                                    child: GestureDetector(
                                      onTap: () {
                                        final snackBar = SnackBar(
                                          content: Text(
                                            "Desabilitado para demonstração!",
                                            style: TextStyle(
                                                color: UaiColors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: 'Fredoka'),
                                          ),
                                        );
                                        Scaffold.of(context)
                                            .showSnackBar(snackBar);
                                      },
                                      child: HorizontalIconBox(
                                        text:
                                            "19/nov/2020 07:49:13\nBrinco 121",
                                        icon: Icon(
                                          UaiCons.milk,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        borderRadius: 20,
                                        iconTextPadding: 20,
                                        backgroundColor: UaiColors.blue2,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder, // left
                                            widgetsBorder, // top
                                            widgetsBorder / 2, // right
                                            widgetsBorder / 2),
                                        textColor: Colors.white,
                                        textSize: 25,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                      ],
                    )
                  ],
                )));
  }
}
