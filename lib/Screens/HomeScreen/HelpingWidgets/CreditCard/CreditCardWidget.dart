import 'package:flutter/material.dart';
import '../../../../Classes/User.dart';
import '../../../../CustomWidgets/CustomContainer.dart';
import 'Widgets/CashBody.dart';
import 'Widgets/CreditBody.dart';
import 'Widgets/CreditTitle.dart';
import 'Widgets/CreditToggle.dart';

class CreditCardWidget extends StatefulWidget {
  const CreditCardWidget({
    super.key,
    required this.h,
    required this.user,
  });

  final double h;
  final User user;

  @override
  State<CreditCardWidget> createState() => _CreditCardWidgetState();
}

class _CreditCardWidgetState extends State<CreditCardWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 👇 Swipe Cards
          SizedBox(
            height: widget.h * 0.28,
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                if (widget.user.hasISupplyCard)
                  Column(
                    children: [
                      CreditTitle(user: widget.user),
                      CreditBody(user: widget.user),
                    ],
                  ),
                CashBody(),
              ],
            ),
          ),
          CreditToggle(currentPage: _currentPage),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
