
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Colors.dart';
import 'Widgets/HeaderWidget.dart';
import 'Widgets/SearchWidget.dart';

class MyAppBar extends StatelessWidget {
   double height;
   bool showBack;

   MyAppBar({
    super.key,
     required this.height,
     this.showBack = false
  });

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(color: MyColors.mainColor),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 12,12,0),
          child: Column(
            children: [
              HeaderWidget(showBack: showBack),
              SizedBox(
                height: 10,
              ),
              SearchWidget(searchController: searchController),
            ],
          ),
        ),
      ),
    );
  }
}



