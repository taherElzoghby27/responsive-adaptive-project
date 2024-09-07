import 'package:flutter/material.dart';

import 'transaction_card.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static List<TransactionCard> transactions = List.generate(
    4,
    (i) => const TransactionCard(),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map(
            (e) => const TransactionCard(),
          )
          .toList(),
    );
  }
}
