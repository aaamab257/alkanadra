import 'dart:async';

import 'package:alkanadra/common/colors.dart';

import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late PageController _pageController;
  int activePage = 0;
  List items = [5, 3, 4, 5];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (activePage < items.length) {
        activePage++;
      } else {
        activePage = 0;
      }

      _pageController.animateToPage(
        activePage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: items.length,
      
      controller: _pageController,
      onPageChanged: (page) {
        setState(() => activePage = page);
      },
      pageSnapping: true,
      itemBuilder: (context, pagePosition) {
        bool active = pagePosition == activePage;
        return SliderCard(active: active, pagePosition: pagePosition);
      },
    );
  }
}

class SliderCard extends StatelessWidget {
  final bool active;
  final int pagePosition;
  const SliderCard(
      {required this.active, required this.pagePosition, super.key});

  @override
  Widget build(BuildContext context) {
    double margin = active ? 10 : 20;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(1, 0),
          )
        ],
        color: ConstantColors.white_color,
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/images/news_test.png'),
                ),
                const Text(
                  'تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية',
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
        ],
      ),
    );
  }
}
