import 'package:alkanadra/common/app_bar.dart';
import 'package:alkanadra/common/colors.dart';
import 'package:alkanadra/common/drawer.dart';
import 'package:alkanadra/common/most_following.dart';
import 'package:alkanadra/common/pray_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../common/custom_slider.dart';
import '../../../../common/images.dart';
import '../../../../common/sports_card.dart';
import '../../news/widgets/news_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: homeAppBar(_searchController),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.Scaffold_BG),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.6),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'اخر الأخبار',
                  style: TextStyle(
                    color: ConstantColors.green_btn,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 295,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    const NewsDetailsScreen(),
                                transitionDuration:
                                    const Duration(milliseconds: 400),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(0.0, 0.1);
                                  const end = Offset.zero;
                                  final tween = Tween(begin: begin, end: end);
                                  final offsetAnimation =
                                      animation.drive(tween);

                                  return SlideTransition(
                                    position: offsetAnimation,
                                    child: child,
                                  );
                                }));
                      },
                      child: const CustomSlider()),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'الأكثر متابعه ',
                  style: TextStyle(
                    color: ConstantColors.green_btn,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 115,
                  child: const MostFollowing(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'مواعيد الصلاة',
                  style: TextStyle(
                    color: ConstantColors.green_btn,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  child: const PrayCard(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'البطولات',
                  style: TextStyle(
                    color: ConstantColors.green_btn,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  child: const SportsCard(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
