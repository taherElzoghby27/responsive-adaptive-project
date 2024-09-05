import 'package:flutter/material.dart';

import '../models/chart_model.dart';
import '../utils/size_config.dart';
import 'chart_section.dart';
import 'detailed_income_chart.dart';
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
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(10),
            child: DetailedIncomeChart(),
          ))
        : Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ChartSection(
                    chartsData: chartsData,
                  ),
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
