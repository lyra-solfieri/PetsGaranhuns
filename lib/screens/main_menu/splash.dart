import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'main_menu.dart';

class SplashInitial extends StatefulWidget {
  const SplashInitial({super.key});

  @override
  State<SplashInitial> createState() => _SplashInitialState();
}

class _SplashInitialState extends State<SplashInitial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        centered: true,
        duration: 3000,
        backgroundColor: Colors.white,
        splash: Container(
          height: 400,
          width: 400,
          child: Lottie.asset(
            'asset/pet_and_friend.json',
            fit: BoxFit.cover,
          ),
        ),
        nextScreen: const MainMenu(),
      ),
    );
  }
}
