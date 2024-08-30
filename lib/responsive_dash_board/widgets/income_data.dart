import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/chart_model.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';

class IncomeData extends StatelessWidget {
  const IncomeData({super.key, required this.chartsData});
  final List<ChartModel> chartsData;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: chartsData
          .map(
            (item) => ListTile(
              minTileHeight: 10,
              leading: CircleAvatar(
                radius: 8,
                backgroundColor: item.color,
              ),
              title: Text(
                item.title,
                style: AppStyles.styleRegular16(context),
              ),
              trailing: Text(
                "${item.value} \$",
                style: AppStyles.styleMedium16(context).copyWith(
                  color: const Color(0xFF4EB7F2),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
