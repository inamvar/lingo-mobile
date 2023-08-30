import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEFF3),
      body: Center(
        child: Image.asset("assets/images/lingo-logo.png"),
      ),
    );
  }
}
