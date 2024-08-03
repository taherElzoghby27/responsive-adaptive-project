import 'package:flutter/material.dart';

import 'grid_view_widget.dart';
import 'list_view_widget.dart';

class ScreenMobileBody extends StatelessWidget {
  const ScreenMobileBody({super.key});

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
          CustomSliverGrid(),
          CustomSliverList(),
        ],
      ),
    );
  }
}
