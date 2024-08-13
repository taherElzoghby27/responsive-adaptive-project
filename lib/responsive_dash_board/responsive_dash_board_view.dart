import 'package:flutter/material.dart';
import 'package:responsive_adaptive/adaptive_layout.dart';

import 'widgets/dashboard_desktop.dart';

class ResponsiveDashBoardView extends StatelessWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const Scaffold(),
        tabletLayout: (context) => const Scaffold(),
        desktopLayout: (context) => const DashBoardDesktop(),
      ),
    );
  }
}
