
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class PromotionFooter extends StatelessWidget {
  const PromotionFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [MyColors.lightColor, MyColors.greenColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.local_offer_rounded, color: MyColors.mainColor, size: 20),
              const SizedBox(width: 8),
              CustomText(
                text: "Bundle Quota",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: MyColors.mainColor,
              ),
            ],
          ),

          CustomContainer(
            bgColor: MyColors.white,

            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: CustomText(
               text: "View Offer",
               fontWeight: FontWeight.w600,
               color: MyColors.mainColor,
              ),
            ),
          )

        ],
      ),
    );
  }
}
