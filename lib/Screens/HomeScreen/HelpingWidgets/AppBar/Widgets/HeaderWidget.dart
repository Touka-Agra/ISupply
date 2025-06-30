import 'package:flutter/material.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../Core/Paths.dart';
import '../../../../../DummyData.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key});

  int notificationCount = DummyData.notificationCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          MyPaths.logoMain,
          height: 50,
          fit: BoxFit.contain,
        ),
        // Text(
        //   "ISUPPLY",
        //   style: TextStyle(
        //     fontSize: 35,
        //     fontWeight: FontWeight.w700,
        //     color: MyColors.white,
        //   ),
        // ),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.notifications, color: MyColors.white),
                if (notificationCount > 0)
                  Positioned(
                    right: 13,
                    top: -2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 18,
                        minHeight: 18,
                      ),
                      child: Text(
                        notificationCount > 99 ? '99+' : '$notificationCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 15),
            CircleAvatar(
              backgroundColor: MyColors.white,
              radius: 15,
              child: Icon(Icons.person, color: MyColors.mainColor),
            ),
          ],
        ),
      ],
    );
  }
}
