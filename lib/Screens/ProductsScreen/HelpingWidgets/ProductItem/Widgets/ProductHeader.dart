import 'package:flutter/material.dart';

import '../../../../../Classes/Product.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';
import '../../../../../CustomWidgets/CustomText.dart';
import 'DiscountBadge.dart';

class ProductHeader extends StatelessWidget {
  final Product product;
  const ProductHeader({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return  CustomContainer(
      blurRadius: 1,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      bgColor: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: product.title, color: MyColors.mainColor, fontSize: 15, fontWeight: FontWeight.w600,),
          if (product.discount > 0)
            DiscountBadge(product: product),
        ],
      ),
    );
  }
}
