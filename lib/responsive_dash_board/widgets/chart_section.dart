import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/chart_model.dart';

class ChartSection extends StatefulWidget {
  const ChartSection({super.key, required this.chartsData});
  final List<ChartModel> chartsData;
  @override
  State<ChartSection> createState() => _ChartSectionState();
}

class _ChartSectionState extends State<ChartSection> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      getChartData(),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (f, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: widget.chartsData.asMap().entries.map(
        (data) {
          int index = data.key;
          ChartModel item = data.value;
          return PieChartSectionData(
            value: item.value,
            color: item.color,
            radius: activeIndex == index ? 40 : 30,
            showTitle: false,
          );
        },
      ).toList(),
    );
  }
}
