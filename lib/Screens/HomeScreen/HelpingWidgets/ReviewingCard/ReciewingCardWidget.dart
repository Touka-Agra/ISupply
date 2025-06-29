import 'package:flutter/material.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class ReviewingCreditWidget extends StatelessWidget {
  const ReviewingCreditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: "Your credit request is under review",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),

        const SizedBox(height: 10),

        SizedBox(
          width: 25,
          height: 25,
          child: CircularProgressIndicator(
            strokeWidth: 4,
            color: MyColors.highlightColor,
          ),
        ),
        const SizedBox(height: 10),
        CustomText(
          text: "Estimated time: 1–2 business days",
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
      ],
    );
  }
}
