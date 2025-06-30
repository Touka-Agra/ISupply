import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/CustomWidgets/CustomContainer.dart';
import 'package:isupply_hackathon_uiux/CustomWidgets/CustomText.dart';

import '../../Classes/Product.dart';
import '../../Core/Colors.dart';
import '../../DummyData.dart';
import '../HomeScreen/HelpingWidgets/AppBar/AppBar.dart';
import '../HomeScreen/HelpingWidgets/AppBar/Widgets/HeaderWidget.dart';
import 'HelpingWidgets/ProductItem/ProductItemWidget.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final List<Product> products = DummyData.products;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          MyAppBar(height: h*0.22, showBack: true,),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                Product product = products[index];
                return ProductItemWidget(product: product);
              },
            ),
          ),
          SizedBox(height: 18,)
        ],
      ),
    );
  }
}
