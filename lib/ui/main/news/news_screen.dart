import 'package:alkanadra/common/category_item_selector.dart';
import 'package:alkanadra/common/news_card.dart';
import 'package:alkanadra/ui/main/news/widgets/news_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../common/colors.dart';
import '../../../common/default_app_bar.dart';
import '../../../common/images.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int selectedIndex = 0;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.Scaffold_BG),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Align(
                alignment: Alignment.center,
                child: defaultAppBar('فئات الاخبار', false , context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                                isSelected = true;
                              });
                            },
                            child: categoryItemSelector('الاخبار ${index}',
                                selectedIndex == index ? true : false),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
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
                                final offsetAnimation = animation.drive(tween);

                                return SlideTransition(
                                  position: offsetAnimation,
                                  child: child,
                                );
                              }));
                    },
                    child: const NewsCard());
              },
            )
          ],
        ),
      ),
    ));
  }
}
