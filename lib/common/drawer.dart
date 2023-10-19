import 'package:alkanadra/common/colors.dart';
import 'package:alkanadra/ui/about_us/about_us_screen.dart';
import 'package:alkanadra/ui/contact_us/contact_us_screen.dart';
import 'package:alkanadra/ui/currancy_change/currency_change.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        color: ConstantColors.white_color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: ConstantColors.green_btn,
                  ),
                ),
                Image.asset(
                  'assets/images/logo.png',
                  scale: 4,
                ),
              ],
            ),
            drawerItem(
              'ديوان الكنادرة',
              const Icon(
                Icons.share_location,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'دواوين العائلة',
              const Icon(
                Icons.history_edu,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'مبرة الكنادرة الخيرية',
              const Icon(
                Icons.people_alt_rounded,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'المشاريع الصغيرة',
              const Icon(
                Icons.inventory_sharp,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'المعرض',
              const Icon(
                Icons.image,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'البطولات',
              const Icon(
                Icons.sports_score_sharp,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'الاستفتاء',
              const Icon(
                Icons.stacked_bar_chart_rounded,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'المناسبات',
              const Icon(
                Icons.calendar_month_outlined,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'تحويل عملات',
              const Icon(
                Icons.attach_money,
                color: ConstantColors.green_btn,
              ),
              () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const CurrancyChange(),
                        transitionDuration: const Duration(milliseconds: 400),
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
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'مواقيت الصلاة',
              const Icon(
                Icons.timelapse,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'مواعيد الطيران',
              const Icon(
                Icons.flight,
                color: ConstantColors.green_btn,
              ),
              () {},
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'من نحن',
              const Icon(
                Icons.info_outline_rounded,
                color: ConstantColors.green_btn,
              ),
              () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const AboutUsScreen(),
                        transitionDuration: const Duration(milliseconds: 400),
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
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
            drawerItem(
              'تواصل معنا',
              const Icon(
                Icons.phone_callback_sharp,
                color: ConstantColors.green_btn,
              ),
              () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ContactUsScreen(),
                        transitionDuration: const Duration(milliseconds: 400),
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
            ),
            const Divider(
              color: Color(0xFFDDDDDD),
            ),
          ],
        ),
      ),
    );
  }
}

Widget drawerItem(String text, Icon icon, void Function() onTap) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: ListTile(
      onTap: onTap,
      leading: icon,
      title: Text(
        text,
        style: const TextStyle(
          color: ConstantColors.black_color,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
