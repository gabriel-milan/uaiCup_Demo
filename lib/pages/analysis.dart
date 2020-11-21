import 'package:uaiCup/colors/uaiColors.dart';
import 'package:uaiCup/icons/uaiCons.dart';
import 'package:flutter/material.dart';
import 'package:uaiCup/widgets/iconbox.dart';

class Analysis extends StatelessWidget {
  final Color backgroundColor;
  final double widgetsBorder;

  Analysis({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: UaiColors.blue2,
          title: new Text(
            "Análise",
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
                                        text: "Caneca\nconectada!",
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
                                        backgroundColor: UaiColors.yellow2,
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
                                        text: "Configurar\nanálise",
                                        textColor: Colors.white,
                                        textSize: 25,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        // Second vertical portion of the screen
                        Expanded(
                          flex: 3,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
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
                                        child: HorizontalIconBox(
                                          backgroundColor: UaiColors.black,
                                          padding: EdgeInsets.fromLTRB(
                                              widgetsBorder / 2, // lefst
                                              widgetsBorder / 2, // top
                                              widgetsBorder, // right
                                              widgetsBorder / 2),
                                          borderRadius: 20,
                                          icon: Icon(
                                            UaiCons.cow,
                                            size: 0,
                                            color: Colors.white,
                                          ),
                                          text: "Iniciar\nanálise",
                                          textColor: Colors.white,
                                          textSize: 40,
                                          iconTextPadding: 0,
                                        )))
                              ]),
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
