import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/Core/Colors.dart';
import '../../../../CustomWidgets/CustomText.dart';
import 'Widgets/RequestButton.dart';
import 'Widgets/RequestLimit.dart';
import 'Widgets/RequestPlanDuration.dart';

class CreditRequestWidget extends StatefulWidget {
  const CreditRequestWidget({super.key});

  @override
  State<CreditRequestWidget> createState() => _CreditRequestWidgetState();
}

class _CreditRequestWidgetState extends State<CreditRequestWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CustomText(
              text: "Apply for ISUPPLY Credit",
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: MyColors.secondaryColor,
            ),
          ),
          const SizedBox(height: 10),

          RequestLimit(),
          const SizedBox(height: 18),

          RequestPlanDuration(),
          const SizedBox(height: 10),

          Center(child: RequestButton()),
        ],
      ),
    );
  }
}