import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/expense_item_model.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import 'container_background.dart';
import 'expenses_component.dart';
import 'expenses_header.dart';

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({super.key});
  static List<ExpenseItemModel> expenses = [
    ExpenseItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    ExpenseItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    ExpenseItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ContainerBackground(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const ExpensesHeader(),
            verticalSpace(6),
            Row(
              children: expenses
                  .map(
                    (item) => Expanded(
                      child: ExpensesComponent(
                        expenseItemModel: ExpenseItemModel(
                          image: item.image,
                          title: item.title,
                          date: item.date,
                          price: item.price,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
