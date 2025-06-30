import 'package:flutter/material.dart';

import '../../../../../Classes/Feature.dart';
import '../../../../../Core/Colors.dart';

class FeatureBadge extends StatelessWidget {
  const FeatureBadge({
    super.key,
    required this.feature,
  });

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -15,
      left: 30,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(4),
        child: Image.asset(feature.imagePath, fit: BoxFit.contain),
      ),
    );
  }
}
