import 'package:flutter/material.dart';

import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomContainer.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomContainer(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 8.0),
            child: Row(
              children: [
                SizedBox(
                  width: w * 0.6,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search for Product..",
                      hintStyle: TextStyle(color: MyColors.grey),
                      border: InputBorder.none,
                    ),

                    cursorColor: MyColors.secondaryColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.mainColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search, color: MyColors.white, size: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: MyColors.greenColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner, color: MyColors.white, size: 30),
          ),
        ),
      ],
    );
  }
}
