import 'dart:async';

import 'package:alkanadra/common/images.dart';
import 'package:flutter/material.dart';

import '../onboarding/on_boardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (_, __, ___) => const OnBoardingScreen(),
                transitionDuration: const Duration(seconds: 2),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 1.0);
                  const end = Offset.zero;
                  final tween = Tween(begin: begin, end: end);
                  final offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                })));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.Scaffold_BG),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Hero(
            tag: 'logo',
            child: Image.asset(Images.Logo),
          ),
        ),
      ),
    );
  }
}
