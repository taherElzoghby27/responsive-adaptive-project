import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          "Cash Withdrawal",
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        subtitle: Text(
          "13 Apr, 2022 ",
          style: AppStyles.styleRegular12(context).copyWith(
            fontSize: 16,
          ),
        ),
        trailing: Text(
          r"$20,129",
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: const Color(0xFFF3735E),
          ),
        ),
      ),
    );
  }
}
