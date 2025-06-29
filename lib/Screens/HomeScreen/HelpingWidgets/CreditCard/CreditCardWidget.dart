import 'dart:io';

import 'package:flutter/material.dart';
import 'package:isupply_hackathon_uiux/Core/Colors.dart';
import 'package:isupply_hackathon_uiux/Screens/HomeScreen/HelpingWidgets/RequestCard/CreditRequestWidget.dart';
import '../../../../Classes/CreditStatus.dart';
import '../../../../Classes/User.dart';
import '../../../../CustomWidgets/CustomContainer.dart';
import '../../../../CustomWidgets/CustomText.dart';
import '../ReviewingCard/ReciewingCardWidget.dart';
import 'Widgets/CashBody.dart';
import 'Widgets/CreditBody.dart';
import 'Widgets/CreditTitle.dart';
import 'Widgets/CreditToggle.dart';

class CreditCardWidget extends StatefulWidget {
  const CreditCardWidget({super.key, required this.h, required this.user});

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
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: widget.h * 0.25,
              maxHeight: widget.h * 0.28,
            ),
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                _buildCreditSection(),
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

  Widget _buildCreditSection() {
    switch (widget.user.creditStatus) {
      case CreditStatus.hasCard:
        return Column(
          children: [
            CreditTitle(
              user: widget.user,
              text: "Credit Limit: ${widget.user.creditCard!.limit} | ${widget.user.creditCard!.days} days",
            ),
            CreditBody(user: widget.user),
          ],
        );

      case CreditStatus.pending:
        return ReviewingCreditWidget();

      case CreditStatus.notRequested:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreditTitle(user: widget.user, text:  "Apply for ISUPPLY Credit"),
            CreditRequestWidget(
              onSubmitted: () {
                setState(() {
                  widget.user.creditStatus = CreditStatus.pending;
                  //sleep(Duration(seconds: 5)); // assume acceptance
                 // widget.user.creditStatus = CreditStatus.pending;
                });
              },
            ),
          ],
        );
    }
  }

}
