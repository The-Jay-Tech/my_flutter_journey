import 'package:flutter/material.dart';
import 'package:login_ui/screens/homepage.dart';
import 'package:login_ui/screens/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safey Road',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => HomePage(),
        '/get-started': (context) => SignIn(),
      },
    );
  }
}
