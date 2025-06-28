import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Core/Colors.dart';

class CustomContainer extends StatelessWidget {
  final Color bgColor;
  final double? height;
  final double? width;
  final double padding;

  Widget child;

  CustomContainer({
    super.key,
    this.bgColor = Colors.white,
    required this.child,
    this.height,
    this.width,
    this.padding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(2, 1), blurRadius: 3),
        ],
      ),
      child: child,
    );
  }
}
