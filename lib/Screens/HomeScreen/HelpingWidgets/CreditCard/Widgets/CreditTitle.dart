
import 'package:flutter/material.dart';

import '../../../../../Classes/User.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class CreditTitle extends StatelessWidget {
  const CreditTitle({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      bgColor: MyColors.greenColor,
      child: Row(
        children: [
          CircleAvatar(child: Icon(Icons.ac_unit)),
          SizedBox(width: 10,),
          CustomText(
            text:"Credit Limit: ${user.creditCard!.limit} | ${user.creditCard!.days} days",
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
