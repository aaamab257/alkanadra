import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 16, left: 16 , bottom: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
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
                    child: Hero(
                      tag: 'news',
                      child: Image.asset('assets/images/news_test.png')),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/date_time.png',
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
                      const SizedBox(
                        width: 25,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/eye.png',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '25 مشاهده',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
