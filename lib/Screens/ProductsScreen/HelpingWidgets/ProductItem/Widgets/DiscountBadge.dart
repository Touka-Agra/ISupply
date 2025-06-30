
import 'package:flutter/cupertino.dart';

import '../../../../../Classes/Product.dart';
import '../../../../../Core/Colors.dart';

class DiscountBadge extends StatelessWidget {
  const DiscountBadge({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: MyColors.greenColor.withOpacity(0.1),
        border: Border.all(color: MyColors.greenColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            "-${product.discount}%",
            style: TextStyle(
              color: MyColors.greenColor,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
