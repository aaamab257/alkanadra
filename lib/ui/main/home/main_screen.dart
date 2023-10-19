import 'package:alkanadra/common/colors.dart';
import 'package:alkanadra/ui/main/home/widgets/home_screen.dart';
import 'package:alkanadra/ui/main/news/news_screen.dart';
import 'package:alkanadra/ui/main/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../../common/images.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NewsScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.Scaffold_BG),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: CurvedNavigationBar(
              animationDuration: const Duration(milliseconds: 400),
              index: 0,
              height: 55,
              backgroundColor: Colors.white,
              animationCurve: Curves.easeInOut,
              color: Colors.white,
              buttonBackgroundColor: ConstantColors.green_btn,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
                Image.asset(selectedIndex == 0
                    ? 'assets/images/selected_home.png'
                    : 'assets/images/home_unselected.png'),
                Image.asset(selectedIndex == 1
                    ? 'assets/images/selected_news.png'
                    : 'assets/images/news_icon.png'),
                Image.asset(selectedIndex == 2
                    ? 'assets/images/selected_user.png'
                    : 'assets/images/user.png'),
              ]),
        ),
      ),
    );
  }
}
