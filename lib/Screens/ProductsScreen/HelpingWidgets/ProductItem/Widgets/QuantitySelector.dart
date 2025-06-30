import 'package:flutter/material.dart';

import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomText.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  void _increment() => setState(() => quantity++);

  void _decrement() {
    if (quantity > 1) setState(() => quantity--);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _iconButton(Icons.remove, _decrement),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomText(
            text: quantity.toString(),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        _iconButton(Icons.add, _increment),
      ],
    );
  }

  Widget _iconButton(IconData icon, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: MyColors.mainColor,

          border: Border.all(color: MyColors.white),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(icon, size: 20, color: MyColors.white),
      ),
    );
  }
}
