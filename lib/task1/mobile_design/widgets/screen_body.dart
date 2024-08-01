import 'package:flutter/material.dart';

import '../../common_widgets/grid_view_widget.dart';
import '../../common_widgets/list_view_widget.dart';

class ScreenMobileBody extends StatelessWidget {
  const ScreenMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 1),
          ),
          CustomSliverGrid(),
          CustomSliverList(),
        ],
      ),
    );
  }
}
