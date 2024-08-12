import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class DashBoardDesktop extends StatelessWidget {
  const DashBoardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawerDashBoard(),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
      ],
    );
  }
}
