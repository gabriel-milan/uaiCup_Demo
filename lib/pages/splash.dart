import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor;
  final Color secondaryColor;
  final Color textColor;
  final Widget nextPage;

  SplashScreen(
      {@required this.backgroundColor,
      @required this.secondaryColor,
      @required this.textColor,
      @required this.nextPage});

  @override
  _SplashScreenState createState() => _SplashScreenState(
      backgroundColor: backgroundColor,
      secondaryColor: secondaryColor,
      textColor: textColor,
      nextPage: nextPage);
}

class _SplashScreenState extends State<SplashScreen> {
  final Color backgroundColor;
  final Color secondaryColor;
  final Color textColor;
  final Widget nextPage;

  _SplashScreenState(
      {@required this.backgroundColor,
      @required this.secondaryColor,
      @required this.textColor,
      @required this.nextPage});

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 350),
                      ),
                      Text(
                        "uaiCup",
                        style: TextStyle(
                            color: textColor,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (ctxt) => nextPage),
                        )
                      },
                      color: secondaryColor,
                      child: Text(
                        "ABRIR",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text("Versão demonstrativa",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.normal)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Image.asset("assets/mimosa_medalha.png")],
          )
        ],
      ),
    );
  }
}
