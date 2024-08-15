import 'package:flutter/material.dart';

import '../models/info_transaction_model.dart';
import 'list_tile_info_widget.dart';

class Transactions extends StatelessWidget {
  const Transactions({
    super.key,
    required this.items,
  });

  final List<InfoTransactionModel> items;

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: ListTileInfoWidget(
    //         image: items[index].image,
    //         title: items[index].title,
    //         subTitle: items[index].subTitle,
    //       ),
    //     ),
    //     itemCount: items.length,
    //   ),
    // );
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (item) => IntrinsicWidth(
                child: ListTileInfoWidget(
                  image: item.image,
                  title: item.title,
                  subTitle: item.subTitle,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
