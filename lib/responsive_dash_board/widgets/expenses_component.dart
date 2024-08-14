import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/expense_item_model.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';

import '../utils/spacing.dart';
import 'container_border.dart';
import 'header_expense_component.dart';

class ExpensesComponent extends StatelessWidget {
  const ExpensesComponent({
    super.key,
    required this.expenseItemModel,
  });
  final ExpenseItemModel expenseItemModel;
  @override
  Widget build(BuildContext context) {
    return ContainerBorder(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HeaderExpenseComponent(image: expenseItemModel.image),
            verticalSpace(34),
            Text(
              expenseItemModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
            verticalSpace(8),
            Text(
              expenseItemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            verticalSpace(16),
            Text(
              expenseItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ],
        ),
      ),
    );
  }
}
