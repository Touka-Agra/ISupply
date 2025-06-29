import 'package:flutter/material.dart';

import '../Classes/User.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    this.fontSize = 13,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
  });

  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
