import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/CustomWidgets/CustomText.dart';

import '../../../../../Core/Colors.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ElevatedButton(
        onPressed: () {
          // handle apply
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.mainColor,
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: CustomText(
          text: "Request Credit",
          color: MyColors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
