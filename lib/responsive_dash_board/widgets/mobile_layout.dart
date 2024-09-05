import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../utils/spacing.dart';
import 'all_expenses.dart';
import 'container_background.dart';
import 'income_section_data.dart';
import 'income_section_header.dart';
import 'my_card_widget.dart';
import 'transactions_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AllExpenses(),
          verticalSpace(15),
          ContainerBackground(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyCardWidget(),
                const Divider(
                  height: 40,
                  color: Color(0xFFF1F1F1),
                ),
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
                const SizedBox(
                  height: 350,
                  child: TransactionListView(),
                ),
              ],
            ),
          ),
          verticalSpace(15),
          ContainerBackground(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: [
                  const IncomeSectionHeader(),
                  verticalSpace(30),
                  const IncomeSectionData(),
                ],
              ),
            ),
          ),
          verticalSpace(15),
        ],
      ),
    );
  }
}
