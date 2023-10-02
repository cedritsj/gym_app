import 'package:flutter/material.dart';
import 'package:my_app/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeView(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
