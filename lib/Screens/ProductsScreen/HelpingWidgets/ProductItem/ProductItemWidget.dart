import 'package:flutter/material.dart';

import '../../../../Classes/Product.dart';
import '../../../../CustomWidgets/CustomContainer.dart';
import 'Widgets/ProductBody.dart';
import 'Widgets/ProductHeader.dart';
import 'Widgets/PromotionFooter.dart';

class ProductItemWidget extends StatefulWidget {
  final Product product;

  const ProductItemWidget({super.key, required this.product});

  @override
  State<ProductItemWidget> createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  @override
  Widget build(BuildContext context) {
    final Product product = widget.product;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: CustomContainer(
        child: Column(
          children: [
            ProductHeader(product: product),
            ProductBody(product: product),
            if(product.hasPromotion) PromotionFooter(),
          ],
        ),
      ),
    );
  }
}
