import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/expense_item_model.dart';

import 'active_and_inactive_expenses_component.dart';

class RowItems extends StatefulWidget {
  const RowItems({
    super.key,
    required this.expenses,
  });

  final List<ExpenseItemModel> expenses;

  @override
  State<RowItems> createState() => _RowItemsState();
}

class _RowItemsState extends State<RowItems> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.expenses.asMap().entries.map(
        (MapEntry<int, ExpenseItemModel> e) {
          int index = e.key;
          ExpenseItemModel item = e.value;
          return index == 0 || index == widget.expenses.length - 1
              ? Expanded(
                  child: InkWell(
                    onTap: () => updateSelectedIndex(index),
                    child: activeOrInActive(index, item),
                  ),
                )
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () => updateSelectedIndex(index),
                      child: activeOrInActive(index, item),
                    ),
                  ),
                );
        },
      ).toList(),
    );
  }

  StatelessWidget activeOrInActive(int index, ExpenseItemModel item) {
    return selectedIndex == index
        ? ActiveExpensesComponent(
            expenseItemModel: ExpenseItemModel(
              image: item.image,
              title: item.title,
              date: item.date,
              price: item.price,
            ),
          )
        : InActiveExpensesComponent(
            expenseItemModel: ExpenseItemModel(
              image: item.image,
              title: item.title,
              date: item.date,
              price: item.price,
            ),
          );
  }

  void updateSelectedIndex(int index) {
    setState(() => selectedIndex = index);
  }
}
