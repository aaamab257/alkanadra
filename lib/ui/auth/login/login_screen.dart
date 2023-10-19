import 'package:alkanadra/common/btns.dart';
import 'package:alkanadra/common/colors.dart';
import 'package:alkanadra/common/label.dart';
import 'package:alkanadra/common/text_field.dart';
import 'package:alkanadra/ui/auth/register/register_screen.dart';
import 'package:flutter/material.dart';
import '../../../common/images.dart';
import '../../main/home/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
        child: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            Hero(
              tag: 'logo',
              child: Image.asset(
                Images.Logo,
                width: 192,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: AlignmentDirectional.centerStart,
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: textLabel('تسجيل الدخول', ConstantColors.green_btn,
                      FontWeight.bold, 24.0)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: AlignmentDirectional.centerStart,
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: textLabel('البريد الالكتروني',
                      ConstantColors.black_color, FontWeight.bold, 14.0)),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              isPass: false,
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: AlignmentDirectional.centerStart,
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: textLabel('كلمة المرور', ConstantColors.black_color,
                      FontWeight.bold, 14.0)),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              isPass: true,
              controller: passwordController,
            ),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: AlignmentDirectional.centerStart,
                child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: textLabel('نسيت كلمة المرور !',
                        ConstantColors.black_color, FontWeight.normal, 12.0)),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            AppButton(
              onClick: () {
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
              text: const Text(
                'تسجيل دخول',
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
                'انشاء حساب جديد',
                style: TextStyle(
                  color: ConstantColors.green_btn,
                ),
              ),
              color: ConstantColors.white_color,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
