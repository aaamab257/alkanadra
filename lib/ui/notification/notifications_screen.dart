import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/default_app_bar.dart';
import '../../common/images.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('الاشعارات', true, context),
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: notificationItem('assets/images/female.png', '9:01am',
                    'قامت Laila Ahmed بنشر المقال الخاص بك ', context),
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget notificationItem(
    String image, String time, String title, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          image,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              time,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    ),
  );
}
