import 'package:flutter/material.dart';
import 'package:xylophones_new/splash_screen.dart';
import 'package:xylophones_new/xylophone.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),);
  }
}



