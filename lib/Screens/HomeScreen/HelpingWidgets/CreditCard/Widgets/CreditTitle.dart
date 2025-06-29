
import 'package:flutter/material.dart';

import '../../../../../Classes/User.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class CreditTitle extends StatelessWidget {
  const CreditTitle({
    super.key,
    required this.user,
    required this.text
  });

  final User user;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      bgColor: MyColors.highlightColor,
      child: Row(
        children: [
          CircleAvatar(child: Icon(Icons.ac_unit)),
          SizedBox(width: 10,),
          CustomText(
            text:text,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
