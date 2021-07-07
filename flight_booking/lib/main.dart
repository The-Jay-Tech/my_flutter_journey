import 'package:flight_booking/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // accentColor: Colors.black,
        primaryColor: Colors.white,
      ),
      home: StartScreen(),
    );
  }
}
