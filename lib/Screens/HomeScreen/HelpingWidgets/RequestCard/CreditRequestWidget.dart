import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/Core/Colors.dart';
import '../../../../CustomWidgets/CustomText.dart';
import 'Widgets/RequestButton.dart';
import 'Widgets/RequestLimit.dart';
import 'Widgets/RequestPlanDuration.dart';

class CreditRequestWidget extends StatefulWidget {
  final VoidCallback? onSubmitted;

  const CreditRequestWidget({super.key, this.onSubmitted});

  @override
  State<CreditRequestWidget> createState() => _CreditRequestWidgetState();
}

class _CreditRequestWidgetState extends State<CreditRequestWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),

          RequestLimit(),
          const SizedBox(height: 18),

          RequestPlanDuration(),
          const SizedBox(height: 10),

          Center(child: RequestButton(onPressed: widget.onSubmitted),
          ),
        ],
      ),
    );
  }
}