import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';
import 'package:responsive_adaptive/responsive_dash_board/widgets/quick_invoice.dart';

import 'all_expenses_body.dart';
import 'container_background.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: AllExpensesBody(),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(24),
          ),
          const SliverFillRemaining(
            child: ContainerBackground(
              child: QuickInvoice(),
            ),
          ),
        ],
      ),
    );
  }
}
