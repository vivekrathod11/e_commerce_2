import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextOverflow? overflow;


  CustomText(
      this.text, {
        this.fontSize = 16.0,
        this.fontWeight = FontWeight.normal,
        this.color = Colors.white,
        this.overflow,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          overflow: TextOverflow.ellipsis, // Truncate long text with ellipsis
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            fontFamily: "Poppins",
            overflow: overflow
          ),
        ),
      ],
    );
  }
}