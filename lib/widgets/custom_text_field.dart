import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final Color borderColor;
  final double hintFontSize;
  final FontWeight hintFontWeight;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.width = 363,
    this.height = 72,
    this.borderRadius = 10,
    this.backgroundColor = const Color(0xFFB6B5B5),
    this.borderColor = Colors.black,
    this.hintFontSize = 27,
    this.hintFontWeight = FontWeight.w300,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: hintFontSize,
            fontWeight: hintFontWeight,
          ),
          filled: true,
          fillColor: backgroundColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor, width: 2),
          ),
        ),
      ),
    );
  }
}
