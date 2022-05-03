import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import '../screen/choose_screen.dart';

Widget splashScreen(BuildContext context) {
  return AnimatedSplashScreen(
    splash: 'assets/splash3.jpg',
    nextScreen: ChooseScreen(),
    splashTransition: SplashTransition.sizeTransition,
    pageTransitionType: PageTransitionType.rightToLeft,
  );
}
