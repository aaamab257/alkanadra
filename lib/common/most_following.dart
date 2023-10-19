import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'colors.dart';

class MostFollowing extends StatefulWidget {
  const MostFollowing({super.key});

  @override
  State<MostFollowing> createState() => _MostFollowingState();
}

class _MostFollowingState extends State<MostFollowing> {
  late PageController _pageController;
  int activePage = 1;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      allowImplicitScrolling: true,
      controller: _pageController,
      onPageChanged: (page) {
        setState(() => activePage = page);
      },
      pageSnapping: true,
      itemBuilder: (context, index) {
        bool active = index == activePage;
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 107,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                )
              ],
              color: ConstantColors.white_color,
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/eye.png',
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'الجمعه 13/10/2018',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '13:30 م',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/news_test.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
