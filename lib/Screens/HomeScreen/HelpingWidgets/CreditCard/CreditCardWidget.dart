import 'package:flutter/material.dart';
import '../../../../Classes/CreditStatus.dart';
import '../../../../Classes/User.dart';
import '../../../../Core/Paths.dart';
import '../../../../CustomWidgets/CustomContainer.dart';
import '../RequestCard/CreditRequestWidget.dart';
import '../ReviewingCard/ReciewingCardWidget.dart';
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
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              MyPaths.patternWhite,
              fit: BoxFit.cover,
              color: Colors.white.withOpacity(0.08),
              colorBlendMode: BlendMode.srcOver,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomContainer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: widget.h * 0.28,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    children: [
                      _buildCreditSection(),
                      CashBody(),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                CreditToggle(currentPage: _currentPage),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCreditSection() {
    switch (widget.user.creditStatus) {
      case CreditStatus.hasCard:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreditTitle(
              user: widget.user,
              text:
              "Credit Limit: ${widget.user.creditCard!.limit} | ${widget.user.creditCard!.days} days",
            ),
            const SizedBox(height: 8),
            CreditBody(user: widget.user),
          ],
        );

      case CreditStatus.pending:
        return const ReviewingCreditWidget();

      case CreditStatus.notRequested:
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CreditTitle(user: widget.user, text: "Apply for ISUPPLY Credit"),
              const SizedBox(height: 8),
              CreditRequestWidget(
                onSubmitted: () {
                  setState(() {
                    widget.user.creditStatus = CreditStatus.pending;
                  });
                },
              ),
            ],
          ),
        );
    }
  }
}
