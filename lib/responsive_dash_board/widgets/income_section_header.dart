import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class IncomeSectionHeader extends StatefulWidget {
  const IncomeSectionHeader({super.key});

  @override
  State<IncomeSectionHeader> createState() => _IncomeSectionHeaderState();
}

class _IncomeSectionHeaderState extends State<IncomeSectionHeader> {
  List<String> list = ["Day", "Week", "Month"];
  String currentList = "Day";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: Colors.black,
          ),
        ),
        Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          margin: const EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButton<String>(
              value: currentList,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              underline: const SizedBox(),
              onChanged: (String? value) {
                setState(() {
                  currentList = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
          ),
        )
      ],
    );
  }
}
