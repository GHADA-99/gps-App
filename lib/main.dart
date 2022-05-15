import 'package:flutter/material.dart';
import 'package:gps/homeScreen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPS',
      routes: {
       HomeScreen.routeName:(BuildContext)=>HomeScreen()
      },
      initialRoute:HomeScreen.routeName,

    );
  }
}
