import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../utils/spacing.dart';
import 'all_card.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: Colors.black,
          ),
        ),
        verticalSpace(15),
        const AllCardWidget(),
      ],
    );
  }
}
