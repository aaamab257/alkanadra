import 'package:alkanadra/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

Widget categoryItemSelector(String text, bool isSelected) {
  return Container(
    width: 86,
    height: 35,
    decoration: BoxDecoration(
      
      color: isSelected ? ConstantColors.green_btn : const Color(0xFFF9F7F7),
      border: Border.all(color: Colors.transparent),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: isSelected
                ? ConstantColors.white_color
                : ConstantColors.green_btn,
            fontSize: 12,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}
