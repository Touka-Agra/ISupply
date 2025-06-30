import 'package:flutter/material.dart';

import '../../../../../Classes/User.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../Core/Paths.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class CreditTitle extends StatelessWidget {
  const CreditTitle({super.key, required this.user, required this.text});

  final User user;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      bgColor: MyColors.highlightColor,
      height: 30,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage(MyPaths.patternWhite),
              backgroundColor: Colors.transparent,
            ),
          ),
          CustomText(text: text, fontWeight: FontWeight.w600, fontSize: 14),
        ],
      ),
    );
  }
}
