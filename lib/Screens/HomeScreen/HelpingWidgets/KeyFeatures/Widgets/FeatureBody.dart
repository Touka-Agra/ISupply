import 'package:flutter/material.dart';
import '../../../../../Classes/Feature.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class FeatureBody extends StatelessWidget {
  const FeatureBody({super.key, required this.feature});

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 100),
      child: CustomContainer(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        // consistent top space for badge
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                feature.title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: MyColors.secondaryColor,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            if (feature.description.isNotEmpty)
              Text(
                feature.description,
                style: TextStyle(
                color: Colors.black38,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                ),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
