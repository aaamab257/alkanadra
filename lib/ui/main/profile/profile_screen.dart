import 'package:alkanadra/common/default_app_bar.dart';
import 'package:dropdown_model_list/drop_down/select_drop_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../common/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('الصفحة الشخصيه', false, context),
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
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/avatar.png',
                  scale: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 38.0),
                  child: Text(
                    'Ahmed Ashraf',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    'aaamab257@gmail.com',
                    style: TextStyle(
                      color: Color(0xFFA0A0A0),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 35,
                          width: 99,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9F7F7),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'مناسباتي',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/edit.png')
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 35,
                          width: 99,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9F7F7),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'ديواناتي',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/book.png')
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 35,
                          width: 99,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9F7F7),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'مقالاتي',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/calendar.png')
                            ],
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFC6C6C6),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/settings.png',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'الأعدادت',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/arrow_left.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFC6C6C6),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/lang_icon.png',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'تغير اللغه',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/arrow_left.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
