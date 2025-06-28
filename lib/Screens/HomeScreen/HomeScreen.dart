import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/DummyData.dart';
import '../../Classes/User.dart';
import 'HelpingWidgets/AppBar/AppBar.dart';
import 'HelpingWidgets/CreditCard/CreditCardWidget.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    User user = DummyData.user;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              MyAppBar(),
              Expanded(child: Container(color: Colors.white)),
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
