
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Colors.dart';
import 'Widgets/HeaderWidget.dart';
import 'Widgets/SearchWidget.dart';

class MyAppBar extends StatelessWidget {
   MyAppBar({
    super.key,
  });

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(color: MyColors.mainColor),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              HeaderWidget(),
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



