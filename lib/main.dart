import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splashscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contextP) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
    );
  }
}
