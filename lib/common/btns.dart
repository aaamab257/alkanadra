import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppButton extends StatefulWidget {
  const AppButton({ required this.onClick, required this.text, required this.color, super.key});
  final Color color;
  final Text text;
  final Function() onClick ;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick, 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
        child: Container(
          height: 46.0,
          decoration: BoxDecoration(
            color: widget.color,
            border: Border.all(color: Colors.transparent),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: widget.text,
          ),
        ),
      ),
    );
  }
}
