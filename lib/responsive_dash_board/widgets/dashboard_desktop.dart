import 'package:flutter/material.dart';

import '../utils/spacing.dart';
import 'all_expenses.dart';
import 'custom_drawer.dart';
import 'my_card_transactions_income.dart';

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
        Expanded(
          flex: 7,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 4,
                      child: AllExpenses(),
                    ),
                    horizontalSpace(32),
                    const Expanded(
                      flex: 3,
                      child: MyCardTransactionsIncome(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
