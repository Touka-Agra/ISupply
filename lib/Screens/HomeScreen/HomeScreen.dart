import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/DummyData.dart';
import '../../Classes/User.dart';
import '../../Core/Colors.dart';
import 'HelpingWidgets/AppBar/AppBar.dart';
import 'HelpingWidgets/CreditCard/CreditCardWidget.dart';
import 'HelpingWidgets/InvoiceBanner/InvoiceWidget.dart';
import 'HelpingWidgets/KeyFeatures/KeyFeaturesWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    User user = DummyData.user;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                MyAppBar(height: h * 0.35,),
                Column(
                  children: [
                    Container(height:165,color: Colors.white),
                    InvoiceWidget(),
                    KeyFeaturesWidget()
                  ],
                ),
        
              ],
            ),
            Positioned(
              top: h * 0.215,
              left: 16,
              right: 16,
              child: CreditCardWidget(h: h, user: user),
            ),
          ],
        ),
      ),
    );
  }
}
