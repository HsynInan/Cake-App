import 'package:cakes_mobil/Drawer/homepage.dart';
import 'package:cakes_mobil/login/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
      },
      theme: ThemeData(
        fontFamily: 'Gilroy',
      ),
    );
  }
}

// This trailing comma makes auto-formatting nicer for build methods.
