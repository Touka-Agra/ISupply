import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/Core/Colors.dart';
import 'package:isupply_hackathon_uiux/CustomWidgets/CustomContainer.dart';

import '../../../../../Classes/Product.dart';
import 'PharmacyPrice.dart';
import 'ProductText.dart';
import 'QuantitySelector.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (product.imagePath != null)
            CustomContainer(
              //bgColor: MyColors.secondaryColor,
              width: w * 0.25,
              height: w * 0.25,
              blurRadius: 0,
              offset: Offset(0, 0),
              padding: EdgeInsets.all(4),

              child: Image.asset(product.imagePath!, fit: BoxFit.cover),
            ),
          SizedBox(width: 10,),
          Flexible(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    ProductText(title: "From", data: product.sellerInfo),
                    SizedBox(width: 5,),
                    if(product.handShake)Icon(Icons.handshake, color: MyColors.highlightColor,)
                  ],
                ),

                const SizedBox(height: 4),
                PharmacyPrice(product: product),

                const SizedBox(height: 4),
                ProductText(
                  title: "Consumer",
                  data: "${product.consumerPrice} EGP",
                ),
                const SizedBox(height: 8),

                if(product.imagePath != null )QuantitySelector()
              ],
            ),
          ),
          if(product.imagePath == null ) Flexible(flex:2,child: QuantitySelector())
        ],
      ),
    );
  }
}
