
import 'package:flutter/material.dart';

import '../../../../../Core/Colors.dart';

class CashBody extends StatelessWidget {
  const CashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.money, size: 40, color: MyColors.mainColor),
          const SizedBox(height: 8),
          const Text(
            "Cash Mode",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
