import 'package:flutter/material.dart';
import '../../../../../Core/Colors.dart';
import '../../../../../CustomWidgets/CustomText.dart';
import '../../../../../DummyData.dart';

class RequestLimit extends StatefulWidget {
  const RequestLimit({super.key});

  @override
  State<RequestLimit> createState() => _RequestLimitState();
}

class _RequestLimitState extends State<RequestLimit> {
  double _selectedLimit = 10000;
  final List<double> creditLimits = DummyData.creditLimits;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         CustomText(
          text: "Credit Limit",
          fontWeight: FontWeight.w500,
          color: Colors.black54,
          fontSize: 13,
        ),

        /// Styled Dropdown
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: DropdownButtonFormField<double>(
            value: _selectedLimit,
            isDense: true,
            icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 20),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: MyColors.mainColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: MyColors.mainColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: MyColors.mainColor, width: 1.4),
              ),
            ),
            dropdownColor: Colors.white,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            items: creditLimits.map((limit) {
              return DropdownMenuItem<double>(
                value: limit,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text("EGP ${limit.toInt()}"),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedLimit = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
