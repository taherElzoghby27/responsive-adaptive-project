import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import 'custom_button.dart';
import 'custom_text_button.dart';

class ButtonInvoiceSection extends StatelessWidget {
  const ButtonInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox(
            height: 62,
            child: CustomTextButton(
              label: "Add more details",
            ),
          ),
        ),
        horizontalSpace(14),
        const Expanded(
          child: SizedBox(
            height: 62,
            child: CustomButton(
              label: "Send Money",
            ),
          ),
        ),
      ],
    );
  }
}
