import 'package:basic_bank/view/screen/splash_screen.dart';
import 'package:basic_bank/view/utalites/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transaction App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily:"general"
      ),
      home:SplashScreen(),
    );
  }
}
