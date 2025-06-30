import 'package:flutter/material.dart';

import '../Core/Colors.dart';

class CustomContainer extends StatelessWidget {
  final Color bgColor;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final Offset offset;
  final double blurRadius;
  final Widget child;

  const CustomContainer({
    super.key,
    this.bgColor = Colors.white,
    required this.child,
    this.height,
    this.width,
    this.padding,
    this.blurRadius = 4,
    this.offset = const Offset(1, 2),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: offset,
            blurRadius: blurRadius,
          ),
        ],
        border: Border.all(
          color: MyColors.lightColor.withOpacity(0.2),
        ),
      ),
      child: child,
    );
  }
}
