import 'package:flutter/material.dart';

import '../utils/spacing.dart';
import 'custom_title_text_field.dart';

class QuickInvoiceFields extends StatelessWidget {
  const QuickInvoiceFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: CustomTitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            horizontalSpace(12),
            const Expanded(
              child: CustomTitleTextField(
                title: 'Customer Email',
                hint: 'Type Customer Email',
              ),
            ),
          ],
        ),
        verticalSpace(16),
        Row(
          children: [
            const Expanded(
              child: CustomTitleTextField(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            horizontalSpace(12),
            const Expanded(
              child: CustomTitleTextField(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
