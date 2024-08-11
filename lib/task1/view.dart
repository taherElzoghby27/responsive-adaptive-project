import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/widgets/mobile_body.dart';

import '../adaptive_layout.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/desktop_body.dart';
import 'widgets/tablet_body.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({super.key});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: buildAppBar(context),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileBody(),
        desktopLayout: (context) => const DesktopBody(),
        tabletLayout: (context) => const TabletBody(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 900
        ? AppBar(backgroundColor: Colors.black)
        : AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () => keyScaffold.currentState!.openDrawer(),
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          );
  }
}
