import 'package:flutter/material.dart';
import 'package:responsive_adaptive/adaptive_layout.dart';

import 'widgets/custom_drawer.dart';
import 'widgets/dashboard_desktop.dart';
import 'widgets/mobile_layout.dart';
import 'widgets/tablet_dashboard.dart';

class ResponsiveDashBoardView extends StatefulWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  State<ResponsiveDashBoardView> createState() =>
      _ResponsiveDashBoardViewState();
}

class _ResponsiveDashBoardViewState extends State<ResponsiveDashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 600
          ? AppBar(
              leading: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                icon: const Icon(Icons.menu),
              ),
              backgroundColor: const Color(0xFFFFFFFF),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 600
          ? const CustomDrawerDashBoard()
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletDashboard(),
        desktopLayout: (context) => const DashBoardDesktop(),
      ),
    );
  }
}
