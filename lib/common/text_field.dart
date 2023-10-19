import 'dart:ui';

import 'package:alkanadra/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({required this.isPass,required this.controller, super.key});

  final TextEditingController controller;
  final bool isPass ;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: ConstantColors.white_color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: TextField(
          obscureText: widget.isPass,
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
