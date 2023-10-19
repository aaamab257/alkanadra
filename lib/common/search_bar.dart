import 'package:alkanadra/common/colors.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField(
      {required this.isPass, required this.controller, super.key});

  final TextEditingController controller;
  final bool isPass;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: ConstantColors.green_btn),
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        obscureText: isPass,
        style: const TextStyle(color: ConstantColors.green_btn),
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
          alignLabelWithHint: true,
          hintText: 'بحث ... ',
          prefixIcon: Icon(
            Icons.search,
            color: ConstantColors.green_btn,
          ),
          contentPadding: EdgeInsets.all(8.0),
          border: InputBorder.none,
        ),
        controller: controller,
        onChanged: (String val) {},
      ),
    );
  }
}
