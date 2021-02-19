import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SignUp(),
    );
  }
}
