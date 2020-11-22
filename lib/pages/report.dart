import 'package:uaiCup/colors/uaiColors.dart';
import 'package:uaiCup/icons/uaiCons.dart';
import 'package:flutter/material.dart';
import 'package:uaiCup/widgets/iconbox.dart';

class Report extends StatelessWidget {
  final Color backgroundColor;
  final double widgetsBorder;

  Report({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: UaiColors.blue2,
          title: new Text(
            "Relatório",
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
                          flex: 2,
                          child: Container(),
                        ),
                        // First vertical portion of the screen
                        Expanded(
                          flex: 3,
                          child: Container(
                            // Adding widgets horizontally
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    // Bluetooth widget
                                    child: GestureDetector(
                                      onTap: () => {},
                                      child: VerticalIconBox(
                                        text: "Antibióticos não\n detectados!",
                                        icon: Icon(
                                          UaiCons.milk,
                                          size: 0,
                                          color: Colors.white,
                                        ),
                                        borderRadius: 20,
                                        iconTextPadding: 20,
                                        backgroundColor: Colors.green,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder, // left
                                            widgetsBorder, // top
                                            widgetsBorder / 2, // right
                                            widgetsBorder / 2),
                                        textColor: Colors.white,
                                        textSize: 25,
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    // Heating widget
                                    child: GestureDetector(
                                      onTap: () => {},
                                      child: VerticalDoubleTextBox(
                                        backgroundColor: UaiColors.blue2,
                                        borderRadius: 20,
                                        iconTextPadding: 15,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder / 2, // left
                                            widgetsBorder, // top
                                            widgetsBorder, // right
                                            widgetsBorder / 2),
                                        text: "gordura",
                                        textColor: Colors.white,
                                        textSize: 25,
                                        secondText: "3,8%",
                                        secondTextSize: 50,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        // Second vertical portion of the screen
                        Expanded(
                          flex: 3,
                          child: Container(
                            // Adding widgets horizontally
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    // Bluetooth widget
                                    child: GestureDetector(
                                      onTap: () => {},
                                      child: VerticalDoubleTextBox(
                                        backgroundColor: UaiColors.blue2,
                                        borderRadius: 20,
                                        iconTextPadding: 15,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder / 2, // left
                                            widgetsBorder, // top
                                            widgetsBorder, // right
                                            widgetsBorder / 2),
                                        text: "lactose",
                                        textColor: Colors.white,
                                        textSize: 25,
                                        secondText: "4,6%",
                                        secondTextSize: 50,
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    // Heating widget
                                    child: GestureDetector(
                                      onTap: () {
                                        final snackBar = SnackBar(
                                          content: Text(
                                            "Análise detalhada desabilitada para demonstração!",
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
                                      child: VerticalIconBox(
                                        backgroundColor: UaiColors.black,
                                        borderRadius: 20,
                                        icon: Icon(
                                          UaiCons.info,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        iconTextPadding: 15,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder / 2, // left
                                            widgetsBorder, // top
                                            widgetsBorder, // right
                                            widgetsBorder / 2),
                                        text: "Análise\ndetalhada",
                                        textColor: Colors.white,
                                        textSize: 25,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                      ],
                    )
                  ],
                )));
  }
}
