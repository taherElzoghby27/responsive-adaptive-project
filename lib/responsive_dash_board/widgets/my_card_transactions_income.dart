import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import 'container_background.dart';
import 'income_section.dart';
import 'my_card_widget.dart';
import 'my_transaction_history.dart';

class MyCardTransactionsIncome extends StatelessWidget {
  const MyCardTransactionsIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          const Expanded(
            flex: 7,
            child: ContainerBackground(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyCardWidget(),
                    Divider(
                      height: 40,
                      color: Color(0xFFF1F1F1),
                    ),
                    Expanded(
                      child: MyTransactionHistoryWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          verticalSpace(15),
          const Expanded(
            flex: 3,
            child: IncomeSection(),
          ),
          verticalSpace(15),
        ],
      ),
    );
  }
}
