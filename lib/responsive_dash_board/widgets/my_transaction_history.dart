import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import 'transactions_list_view.dart';

class MyTransactionHistoryWidget extends StatelessWidget {
  const MyTransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20(context).copyWith(
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "see all",
                style: AppStyles.styleMedium16(context).copyWith(
                  color: const Color(0xFF50B0EA),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(30),
        const TransactionListView(),
      ],
    );
  }
}
