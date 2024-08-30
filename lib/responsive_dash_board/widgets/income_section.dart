import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/widgets/income_section_header.dart';
import '../utils/spacing.dart';
import 'container_background.dart';
import 'income_section_data.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            const IncomeSectionHeader(),
            verticalSpace(30),
            const Expanded(
              child: IncomeSectionData(),
            ),
          ],
        ),
      ),
    );
  }
}
