import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/expense_item_model.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';

import '../utils/spacing.dart';
import 'container_border.dart';
import 'header_expense_component.dart';

class InActiveExpensesComponent extends StatelessWidget {
  const InActiveExpensesComponent({
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

class ActiveExpensesComponent extends StatelessWidget {
  const ActiveExpensesComponent({
    super.key,
    required this.expenseItemModel,
  });
  final ExpenseItemModel expenseItemModel;
  @override
  Widget build(BuildContext context) {
    return ContainerBorder(
      backgroundColor: const Color(0xFF4EB7F2),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HeaderExpenseComponent(
              image: expenseItemModel.image,
              color: const Color(0xFFFFFFFF),
              background: const Color(0xFF60BEF3),
            ),
            verticalSpace(34),
            Text(
              expenseItemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: const Color(0xFFFFFFFF),
              ),
            ),
            verticalSpace(8),
            Text(
              expenseItemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
            verticalSpace(16),
            Text(
              expenseItemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
