import 'package:flutter/material.dart';

import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomText.dart';
import '../../../../../DummyData.dart';

class RequestPlanDuration extends StatefulWidget {
  const RequestPlanDuration({super.key});

  @override
  State<RequestPlanDuration> createState() => _RequestPlanDurationState();
}

class _RequestPlanDurationState extends State<RequestPlanDuration> {
  int _selectedPlan = 30;
  final List<int> planDurations = DummyData.planDurations;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: "Plan Duration",
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
        Row(
          children:
              planDurations.map((duration) {
                final isSelected = _selectedPlan == duration;
                return GestureDetector(
                  onTap: () => setState(() => _selectedPlan = duration),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? MyColors.mainColor
                              : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: CustomText(
                      text: "$duration Days",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.white : Colors.black87,
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
