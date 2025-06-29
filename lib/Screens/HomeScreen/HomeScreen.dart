import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/DummyData.dart';
import '../../Classes/User.dart';
import '../../Core/Colors.dart';
import 'HelpingWidgets/AppBar/AppBar.dart';
import 'HelpingWidgets/CreditCard/CreditCardWidget.dart';
import 'HelpingWidgets/InvoiceBanner/InvoiceWidget.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    User user = DummyData.user;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Stack(
        children: [
          Column(
            children: [
              MyAppBar(),
              Column(
                children: [
                  Container(height:165,color: Colors.white),
                  InvoiceWidget()
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
    );
  }
}
