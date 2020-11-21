import 'package:uaiCup/colors/uaiColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:uaiCup/pages/splash.dart';
import 'package:uaiCup/pages/menu.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF3FAAC4),
        accentColor: Color(0xFFF6CDB4),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        backgroundColor: Color(0xFF3FAAC4),
        secondaryColor: Color(0xFF383B3A),
        textColor: Colors.white,
        nextPage: Monitor(
          backgroundColor: UaiColors.white,
          widgetsBorder: 10,
        ),
      ),
    ));
  });
}
