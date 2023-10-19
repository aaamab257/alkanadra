import 'package:flutter/material.dart';

Widget textLabel(String text, Color color, FontWeight weight , double fontSize) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 35),
    child: Text(
      text,
      
      style: TextStyle(color: color, fontFamily: 'Cairo', fontWeight: weight , fontSize: fontSize),
    ),
  );
}
