import 'package:uaiCup/colors/uaiColors.dart';
import 'package:uaiCup/icons/uaiCons.dart';
import 'package:flutter/material.dart';
import 'package:uaiCup/pages/report.dart';
import 'package:uaiCup/widgets/iconbox.dart';

class Information extends StatelessWidget {
  final Color backgroundColor;
  final double widgetsBorder;

  Information({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: UaiColors.blue2,
          title: new Text(
            "Informações",
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
                    Container(
                        decoration: BoxDecoration(
                      color: backgroundColor,
                    )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 100),
                                ),
                                Text(
                                  "uaiCup",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 70,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Fredoka'),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Versão demonstrativa gerada",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              Text("em novembro de 2020 para",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              Text("o Desafio de Startups do",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              Text("Ideas for Milk 2020.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Text("Entre em contato conosco",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              Text("ou acesse nosso website:",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Text("uaicup.labnet.nce.ufrj.br",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              Text("uaicup@cos.ufrj.br",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          "assets/mimosa_medalha.png",
                          scale: 2,
                        )
                      ],
                    )
                  ],
                )));
  }
}
