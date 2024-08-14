import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/expense_item_model.dart';

import 'expenses_component.dart';

class RowItems extends StatelessWidget {
  const RowItems({
    super.key,
    required this.expenses,
  });

  final List<ExpenseItemModel> expenses;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: expenses.asMap().entries.map(
        (MapEntry<int, ExpenseItemModel> e) {
          int index = e.key;
          ExpenseItemModel item = e.value;
          return index == 0 || index == expenses.length - 1
              ? Expanded(
                  child: ExpensesComponent(
                    expenseItemModel: ExpenseItemModel(
                      image: item.image,
                      title: item.title,
                      date: item.date,
                      price: item.price,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: ExpensesComponent(
                      expenseItemModel: ExpenseItemModel(
                        image: item.image,
                        title: item.title,
                        date: item.date,
                        price: item.price,
                      ),
                    ),
                  ),
                );
        },
      ).toList(),
    );
  }
}
