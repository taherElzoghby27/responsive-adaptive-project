import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/widgets/tablet_layout.dart';

import 'widgets/mobile_layout.dart';

class ScreenView extends StatelessWidget {
  const ScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const TabletLayout();
        } else {
          return const MobileLayout();
        }
      },
    );
  }
}
