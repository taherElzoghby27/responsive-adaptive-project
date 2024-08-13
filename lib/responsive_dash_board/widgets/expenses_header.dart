import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'range_option.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeOption(),
      ],
    );
  }
}
