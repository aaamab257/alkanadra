import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'colors.dart';

class SubjectTextField extends StatefulWidget {
  SubjectTextField({required this.controller, super.key});
  final TextEditingController controller;

  @override
  State<SubjectTextField> createState() => _SubjectTextFieldState();
}

class _SubjectTextFieldState extends State<SubjectTextField> {
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
          maxLines: 6,
          maxLength: 500,
          minLines: 1,
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
