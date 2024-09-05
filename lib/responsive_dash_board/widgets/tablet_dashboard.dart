import 'package:flutter/material.dart';

import '../utils/spacing.dart';
import 'custom_drawer.dart';
import 'mobile_layout.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomDrawerDashBoard(),
        ),
        horizontalSpace(32),
        const Expanded(
          flex: 4,
          child: MobileLayout(),
        ),
        horizontalSpace(32),
      ],
    );
  }
}
