import 'package:flutter/material.dart';

import '../utils/spacing.dart';
import 'all_expenses.dart';
import 'custom_drawer.dart';

class DashBoardDesktop extends StatelessWidget {
  const DashBoardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomDrawerDashBoard(),
        ),
        horizontalSpace(32),
        const Expanded(
          flex: 4,
          child: AllExpenses(),
        ),
        horizontalSpace(32),
        const Expanded(
          flex: 3,
          child: SizedBox(),
        ),
      ],
    );
  }
}
