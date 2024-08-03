import 'package:flutter/material.dart';

import '../../common_widgets/custom_list.dart';
import '../../common_widgets/grid_view_widget.dart';
import '../../common_widgets/list_view_widget.dart';

class ScreenMobileBody extends StatelessWidget {
  const ScreenMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  return const CustomList();
                } else {
                  return const CustomSliverGrid();
                }
              },
            ),
          ),
          const CustomSliverList(),
        ],
      ),
    );
  }
}
