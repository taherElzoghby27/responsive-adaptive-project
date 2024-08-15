import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import '../models/info_transaction_model.dart';
import 'transactions.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});
  static List<InfoTransactionModel> items = [
    InfoTransactionModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail.com',
      image: Assets.imagesAvatar1,
    ),
    InfoTransactionModel(
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    InfoTransactionModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail.com',
      image: Assets.imagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        verticalSpace(8),
        Transactions(items: items),
      ],
    );
  }
}
