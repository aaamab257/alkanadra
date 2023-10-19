import 'package:flutter/material.dart';

import 'images.dart';

PreferredSizeWidget defaultAppBar(String title, bool isBack , BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: isBack,
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: isBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          )
        : Container(),
    title: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.Scaffold_BG),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
