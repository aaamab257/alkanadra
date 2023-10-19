import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'colors.dart';

class ContactUsTextField extends StatefulWidget {
  final bool isMessage;
  const ContactUsTextField(
      {this.isMessage = false, required this.controller, super.key});
  final TextEditingController controller;

  @override
  State<ContactUsTextField> createState() => _ContactUsTextFieldState();
}

class _ContactUsTextFieldState extends State<ContactUsTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ConstantColors.green_btn),
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          color: Colors.transparent,
        ),
        child: TextField(
          
          style: const TextStyle(color: ConstantColors.green_btn),
          textInputAction: TextInputAction.done,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            border: InputBorder.none,
          ),
          controller: widget.controller,
          onChanged: (String val) {},
        ),
      ),
    );
  }
}
