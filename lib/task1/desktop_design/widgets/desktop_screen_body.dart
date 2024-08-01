import 'package:flutter/material.dart';

import '../../common_widgets/grid_view_widget.dart';
import '../../common_widgets/list_view_widget.dart';

class ScreenDesktopBody extends StatelessWidget {
  const ScreenDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomSliverGrid(),
          ),
          SizedBox(height: 10),
          Expanded(
            child: CustomSliverList(),
          ),
        ],
      ),
    );
  }
}
