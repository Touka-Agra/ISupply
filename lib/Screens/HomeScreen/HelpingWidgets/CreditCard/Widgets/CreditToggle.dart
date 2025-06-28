import 'package:flutter/material.dart';

import '../../../../../Core/Colors.dart';

class CreditToggle extends StatelessWidget {
  const CreditToggle({super.key, required int currentPage})
    : _currentPage = currentPage;

  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            2,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 10 : 6,
              height: _currentPage == index ? 10 : 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    _currentPage == index
                        ? Colors.black54
                        : Colors.black26,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "Swipe to switch mode",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black38,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
