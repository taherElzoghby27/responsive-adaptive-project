import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import 'container_background.dart';
import 'expenses_component.dart';
import 'expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Expanded(
            child: ContainerBackground(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const ExpensesHeader(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ExpensesComponent(),
                        horizontalSpace(8),
                        const ExpensesComponent(),
                        horizontalSpace(8),
                        const ExpensesComponent(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          verticalSpace(30),
          const Expanded(
            flex: 2,
            child: ContainerBackground(
              child: Column(),
            ),
          ),
        ],
      ),
    );
  }
}
