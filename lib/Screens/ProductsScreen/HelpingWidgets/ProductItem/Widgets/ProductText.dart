import 'package:flutter/material.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class ProductText extends StatelessWidget {
  const ProductText({super.key, required this.title, required this.data});

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: "$title: ",
          color: Colors.grey.shade700,
        ),
        CustomText(
          text: data,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
