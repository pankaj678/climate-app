import 'package:flutter/material.dart';
import 'loading_screen.dart';
import 'city_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: CityScreen(),
    );
  }
}



