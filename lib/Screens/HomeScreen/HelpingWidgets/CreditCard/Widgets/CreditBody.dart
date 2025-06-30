import 'package:flutter/material.dart';

import '../../../../../Classes/User.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class CreditBody extends StatelessWidget {
  const CreditBody({super.key, required this.user});

  final User user;

  //String formatted = DateFormat('yyyy-MM-dd HH:mm').format(user.creditCard.lastUpdate);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "${user.creditCard!.remaining}",
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: MyColors.secondaryColor,
              ),
              CustomText(
                text: "Remaining",
                color: Colors.black26,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Divider(color: Colors.black12, thickness: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Spent: ", fontWeight: FontWeight.w600),
              CustomText(
                text: "${user.creditCard!.spent}",
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Remaining days: ", fontWeight: FontWeight.w600),
              CustomText(
                text: "${user.creditCard!.remainingDays} days",
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled_rounded,
                    color: MyColors.mainColor,
                  ),
                  SizedBox(width: 2),
                  CustomText(
                    text: "Last Update: 28-6-2025 1:30PM",
                    fontSize: 12,
                    color: Colors.black26,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              CustomContainer(
                padding: EdgeInsets.all(2),
                bgColor: MyColors.mainColor,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomText(text: "Manage", color: MyColors.white,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
