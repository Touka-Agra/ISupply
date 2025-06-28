import 'package:flutter/material.dart';

import '../../../../../Core/Colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "ISUPPLY",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w700,
            color: MyColors.white,
          ),
        ),
        Row(
          children: [
            Icon(Icons.notifications, color: MyColors.white),
            SizedBox(width: 15),
            CircleAvatar(
              backgroundColor: MyColors.white,
              radius: 15,
              child: Icon(
                Icons.person,
                color: MyColors.mainColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}