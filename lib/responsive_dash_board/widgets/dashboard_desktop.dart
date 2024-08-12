import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class DashBoardDesktop extends StatelessWidget {
  const DashBoardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawerDashBoard(),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
