import 'package:alkanadra/common/btns.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/colors.dart';
import '../../common/contact_us_text_field.dart';
import '../../common/default_app_bar.dart';
import '../../common/images.dart';
import '../../common/label.dart';
import '../../common/subject_textField.dart';
import '../../common/text_field.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  late TextEditingController _nameControrller;
  late TextEditingController _emailControrller;
  late TextEditingController _titleControrller;
  late TextEditingController _messageControrller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _nameControrller = TextEditingController();
    _emailControrller = TextEditingController();
    _titleControrller = TextEditingController();
    _messageControrller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('تواصل معنا', true, context),
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
                  'assets/images/contact_us.png',
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: AlignmentDirectional.centerStart,
                  child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: textLabel('الاسم ', ConstantColors.black_color,
                          FontWeight.bold, 14.0)),
                ),
                const SizedBox(
                  height: 10,
                ),
                ContactUsTextField(
                  controller: _nameControrller,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: AlignmentDirectional.centerStart,
                  child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: textLabel('البريد الالكتروني ',
                          ConstantColors.black_color, FontWeight.bold, 14.0)),
                ),
                const SizedBox(
                  height: 10,
                ),
                ContactUsTextField(
                  controller: _nameControrller,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: AlignmentDirectional.centerStart,
                  child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: textLabel('عنوان الموضوع',
                          ConstantColors.black_color, FontWeight.bold, 14.0)),
                ),
                const SizedBox(
                  height: 10,
                ),
                ContactUsTextField(
                  isMessage: false,
                  controller: _titleControrller,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: AlignmentDirectional.centerStart,
                  child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: textLabel('الموضوع', ConstantColors.black_color,
                          FontWeight.bold, 14.0)),
                ),
                const SizedBox(
                  height: 10,
                ),
                SubjectTextField(
                  controller: _messageControrller,
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: AppButton(
                    onClick: () {},
                    text: const Text(
                      'ارسال',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: ConstantColors.green_btn,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: textLabel('او يمكنك التواصل معنا عن طريق',
                      ConstantColors.black_color, FontWeight.bold, 14.0),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/facebook.png'),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/images/google.png'),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/images/twitter.png'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
