import 'package:flutter/material.dart';

import 'package:workshop/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<int, Color> color = {
      50: Color.fromRGBO(255, 127, 86, .1),
      100: Color.fromRGBO(255, 127, 86, .2),
      200: Color.fromRGBO(255, 127, 86, .3),
      300: Color.fromRGBO(255, 127, 86, .4),
      400: Color.fromRGBO(255, 127, 86, .5),
      500: Color.fromRGBO(255, 127, 86, .6),
      600: Color.fromRGBO(255, 127, 86, .7),
      700: Color.fromRGBO(255, 127, 86, .8),
      800: Color.fromRGBO(255, 127, 86, .9),
      900: Color.fromRGBO(255, 127, 86, 1),
    };

    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFFF7F56, color),
      ),
    );
  }
}
