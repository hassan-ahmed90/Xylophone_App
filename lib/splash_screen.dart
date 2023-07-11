import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xylophones_new/text_splash.dart';
import 'package:xylophones_new/xylophone.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
           backgroundColor: Colors.black,
           splash: Lottie.asset("assets/circle.json"),
           nextScreen: const TextScreen(),
           duration: 5000,
           splashIconSize: 250,
           splashTransition: SplashTransition.sizeTransition,
           animationDuration: const Duration(seconds: 1),
         );
  }
}
