import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Classes/Product.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class PharmacyPrice extends StatelessWidget {
  const PharmacyPrice({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final double discountedPrice =
        product.pharmacyPrice -
        (product.pharmacyPrice * product.discount / 100);

    return Row(
      children: [
        CustomText(text: "Pharmacy Price: ", color: Colors.grey.shade700),
        if (product.discount > 0)
          Column(
            children: [
              const SizedBox(height: 8),
              Text(
                "${product.pharmacyPrice.toStringAsFixed(2)} EGP",
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 8),
              CustomText(
                text: "${discountedPrice.toStringAsFixed(2)} EGP",
                fontSize: 14,
                color: MyColors.mainColor,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 8),
            ],
          )
        else
          CustomText(
            text: "${product.pharmacyPrice.toStringAsFixed(2)} EGP",
            fontSize: 13,
            color: MyColors.mainColor,
            fontWeight: FontWeight.w600,
          ),
      ],
    );
  }
}
