import 'package:flutter/material.dart';

import '../models/chart_model.dart';
import 'chart_section.dart';
import 'income_data.dart';

class IncomeSectionData extends StatelessWidget {
  const IncomeSectionData({super.key});
  static List<ChartModel> chartsData = [
    ChartModel(
      title: "Design service",
      value: 40,
      color: const Color(0xFF208CC8),
    ),
    ChartModel(
      title: "Design product",
      value: 25,
      color: const Color(0xFF4EB7F2),
    ),
    ChartModel(
      title: "Product royalti",
      value: 20,
      color: const Color(0xFF064061),
    ),
    ChartModel(
      title: "Other",
      value: 22,
      color: const Color(0xFFE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ChartSection(
            chartsData: chartsData,
          ),
        ),
        Expanded(
          flex: 3,
          child: IncomeData(
            chartsData: chartsData,
          ),
        ),
      ],
    );
  }
}
