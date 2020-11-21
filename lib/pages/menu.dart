import 'package:uaiCup/colors/uaiColors.dart';
import 'package:uaiCup/pages/analysis.dart';
import 'package:flutter/material.dart';
import 'package:uaiCup/widgets/iconbox.dart';
import 'package:uaiCup/icons/uaiCons.dart';
import '../widgets/iconbox.dart';

class Monitor extends StatefulWidget {
  final Color backgroundColor;
  final double widgetsBorder;

  Monitor({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  _MonitorState createState() => _MonitorState(
      backgroundColor: backgroundColor, widgetsBorder: widgetsBorder);
}

class _MonitorState extends State<Monitor> {
  final Color backgroundColor;
  final double widgetsBorder;

  bool btConnected = true;
  bool heatingEnabled = true;

  void changeBluetoothStatus() {
    setState(() {
      btConnected = !btConnected;
    });
  }

  void changeHeatingStatus() {
    setState(() {
      heatingEnabled = !heatingEnabled;
    });
  }

  _MonitorState({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: UaiColors.blue2,
        title: Text(
          "uaiCup",
          style: TextStyle(
              color: UaiColors.white,
              fontSize: 40,
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
                    decoration: BoxDecoration(color: backgroundColor),
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
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                  child: GestureDetector(
                                      onTap: () => {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (ctxt) => Analysis(
                                                        backgroundColor:
                                                            UaiColors.white,
                                                        widgetsBorder: 10,
                                                      )),
                                            )
                                          },
                                      child: HorizontalIconBox(
                                        backgroundColor: UaiColors.blue2,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder / 2, // lefst
                                            widgetsBorder / 2, // top
                                            widgetsBorder, // right
                                            widgetsBorder / 2),
                                        borderRadius: 20,
                                        icon: Icon(
                                          UaiCons.cow,
                                          size: 80,
                                          color: Colors.white,
                                        ),
                                        text: "Nova\nanálise",
                                        textColor: Colors.white,
                                        textSize: 40,
                                        iconTextPadding: 20,
                                      )))
                            ]),
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
                                    onTap: () {
                                      final snackBar = SnackBar(
                                        content: Text(
                                          "Falta implementar!",
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
                                      text: "Histórico",
                                      icon: Icon(
                                        UaiCons.history,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                      borderRadius: 20,
                                      iconTextPadding: 20,
                                      backgroundColor: UaiColors.black,
                                      padding: EdgeInsets.fromLTRB(
                                          widgetsBorder, // left
                                          widgetsBorder, // top
                                          widgetsBorder / 2, // right
                                          widgetsBorder / 2),
                                      textColor: Colors.white,
                                      textSize: 15,
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  // Temperature widget
                                  child: GestureDetector(
                                      onTap: () {
                                        final snackBar = SnackBar(
                                          content: Text(
                                            "Falta implementar!",
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
                                        text: "Informações",
                                        icon: Icon(
                                          UaiCons.info,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        borderRadius: 20,
                                        iconTextPadding: 20,
                                        backgroundColor: UaiColors.yellow2,
                                        padding: EdgeInsets.fromLTRB(
                                            widgetsBorder, // left
                                            widgetsBorder, // top
                                            widgetsBorder / 2, // right
                                            widgetsBorder / 2),
                                        textColor: Colors.white,
                                        textSize: 15,
                                      ))),
                              Expanded(
                                  flex: 1,
                                  // Heating widget
                                  child: GestureDetector(
                                    onTap: () {
                                      final snackBar = SnackBar(
                                        content: Text(
                                          "Menu de configurações desabilitado para demonstração!",
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
                                      backgroundColor: UaiColors.orange,
                                      borderRadius: 20,
                                      icon: Icon(
                                        UaiCons.settings,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                      iconTextPadding: 15,
                                      padding: EdgeInsets.fromLTRB(
                                          widgetsBorder / 2, // left
                                          widgetsBorder, // top
                                          widgetsBorder, // right
                                          widgetsBorder / 2),
                                      text: "Configurações",
                                      textColor: Colors.white,
                                      textSize: 15,
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
              )),
    ));
  }
}
