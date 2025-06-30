import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/CustomWidgets/CustomContainer.dart';
import '../../../../Classes/Feature.dart';
import '../../../../Core/Colors.dart';
import '../../../../Core/Paths.dart';
import '../../../../CustomWidgets/CustomText.dart';
import 'Widgets/FeatureBadge.dart';
import 'Widgets/FeatureBody.dart';

class KeyFeaturesWidget extends StatelessWidget {
  const KeyFeaturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Feature> features = [
      Feature(title: 'Best Prices', imagePath: MyPaths.bestPrices, description: "List of 10,000 items"),
      Feature(title: 'Cosmetics', imagePath: MyPaths.cosmetics),
      Feature(title: 'Stores', imagePath: MyPaths.stores),
      Feature(title: 'Factories', imagePath: MyPaths.factories),
      Feature(title: 'Shortage Items', imagePath: MyPaths.shortageItems),
      Feature(title: 'Top-Trending Items', imagePath: MyPaths.topTrendingItems),
      Feature(title: 'Promotions', imagePath: MyPaths.promotions),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 12, top: 8, bottom: 8),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: features.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 18,
          childAspectRatio: 0.9,
          //mainAxisExtent: null,
        ),
        itemBuilder: (context, index) {
          final feature = features[index];
          return GestureDetector(
            onTap: () {
              // Navigate to the feature screen
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                FeatureBody(feature: feature),
                FeatureBadge(feature: feature),
              ],
            ),
          );
        },
      ),
    );
  }
}
