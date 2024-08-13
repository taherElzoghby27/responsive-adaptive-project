import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';

import '../utils/app_assets.dart';
import '../utils/spacing.dart';
import 'container_border.dart';
import 'header_expense_component.dart';

class ExpensesComponent extends StatelessWidget {
  const ExpensesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerBorder(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const HeaderExpenseComponent(image: Assets.imagesIncome),
            verticalSpace(8),
            Text(
              'Income',
              style: AppStyles.styleSemiBold16(context),
            ),
            Text(
              'April 2022',
              style: AppStyles.styleRegular14(context),
            ),
            Text(
              r'$20,129',
              style: AppStyles.styleSemiBold24(context),
            ),
          ],
        ),
      ),
    );
  }
}
