import 'package:alkanadra/ui/auth/login/login_screen.dart';
import 'package:alkanadra/ui/auth/register/register_screen.dart';
import 'package:alkanadra/ui/main/home/main_screen.dart';
import 'package:flutter/material.dart';

import '../../common/btns.dart';
import '../../common/colors.dart';
import '../../common/images.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Image.asset(Images.Logo),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton(
              onClick: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const RegisterScreen(),
                        transitionDuration: const Duration(milliseconds: 1000),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 0.1);
                          const end = Offset.zero;
                          final tween = Tween(begin: begin, end: end);
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        }));
              },
              text: const Text(
                'حساب جديد',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: ConstantColors.green_btn,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
              onClick: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const LoginScreen(),
                        transitionDuration: const Duration(milliseconds: 1000),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 0.1);
                          const end = Offset.zero;
                          final tween = Tween(begin: begin, end: end);
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        }));
              },
              text: const Text(
                'تسجيل الدخول',
                style: TextStyle(
                  color: ConstantColors.green_btn,
                ),
              ),
              color: ConstantColors.white_color,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const MainScreen(),
                        transitionDuration: const Duration(milliseconds: 1000),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 0.1);
                          const end = Offset.zero;
                          final tween = Tween(begin: begin, end: end);
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        }));
              },
              child: const Text(
                'الأستمرار كضيف',
                style: TextStyle(
                  color: ConstantColors.black_color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
