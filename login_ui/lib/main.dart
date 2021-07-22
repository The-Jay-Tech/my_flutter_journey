import 'package:flutter/material.dart';
import 'package:login_ui/auth/welcome.dart';
import 'package:login_ui/auth/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safey Road',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/get-started': (context) => SignIn(),
      },
    );
  }
}
