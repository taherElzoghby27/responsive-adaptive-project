import 'package:flutter/material.dart';

import 'custom_list.dart';
import 'list_view_widget.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: CustomList(),
          ),
          CustomSliverList(),
        ],
      ),
    );
  }
}
