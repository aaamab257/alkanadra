import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/colors.dart';
import '../../common/default_app_bar.dart';
import '../../common/images.dart';
import '../../common/label.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('نبذه عننا', true, context),
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
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/images/logo.png',
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: AlignmentDirectional.centerStart,
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: textLabel('الكنادرة', ConstantColors.black_color,
                        FontWeight.bold, 16.0),
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
            )
          ],
        ),
      ),
    );
  }
}
