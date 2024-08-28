import 'package:flutter/material.dart';

import 'container_background.dart';
import 'my_card_widget.dart';

class MyCardTransactionsIncome extends StatelessWidget {
  const MyCardTransactionsIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: ContainerBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
