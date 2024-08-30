import 'package:flutter/material.dart';

import 'transaction_card.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const TransactionCard();
      },
      itemCount: 15,
    );
  }
}
