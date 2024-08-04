import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'custom_right_widget.dart';
import 'tablet_body.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //drawer
        Expanded(
          child: CustomDrawer(),
        ),
        //tablet body
        Expanded(
          flex: 3,
          child: TabletBody(),
        ),
        Expanded(
          child: CustomRightWidget(),
        ),
      ],
    );
  }
}
