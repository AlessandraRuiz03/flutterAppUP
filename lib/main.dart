import 'package:flutter/material.dart';
import 'package:flutterapp2/src/principio.dart';

void main() {
  runApp(MyApp());
}
final user = TextEditingController();
final pass = TextEditingController();


   Map <int, Color> color =
        {
        50: Color. fromRGBO (240,94,100, .1),
        100: Color. fromRGBO (240,94,100, .2),
        200: Color. fromRGBO (240,94,100, .3),
        300: Color. fromRGBO (240,94,100, .4),
        400: Color. fromRGBO (240,94,100, .5),
        500: Color. fromRGBO (240,94,100, .6),
        600: Color. fromRGBO (240,94,100, .7),
        700: Color. fromRGBO (240,94,100, .8),
        800: Color. fromRGBO (240,94,100, .9),
        900: Color. fromRGBO (240,94,100, 1),
        };

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     MaterialColor colorCustom = MaterialColor (0xFFF05E64, color);
    return MaterialApp(
    
      title: 'AppRest',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

      primarySwatch: colorCustom,
      bottomAppBarColor: colorCustom
      ),
      home: Center(
        child : principio(),
      ),
      // MyHomePage(title: 'AppRest'),
    );
  }
}