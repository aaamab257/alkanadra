import 'package:alkanadra/common/default_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../common/colors.dart';
import '../../../../common/images.dart';

class NewsDetailsScreen extends StatefulWidget {
  const NewsDetailsScreen({super.key});

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage(Images.News_test),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      PositionedDirectional(
                        top: 10,
                        end: 10,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color:
                                  ConstantColors.white_color.withOpacity(0.8),
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: ConstantColors.black_color,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 10,
                        start: 10,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: ConstantColors.green_btn,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/share_icon.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
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
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  'تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية تعاون بين المهندسين والكهرباء لإعداد برامج خاصة لتأهيل وتطوير كوادر الوطنية',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
