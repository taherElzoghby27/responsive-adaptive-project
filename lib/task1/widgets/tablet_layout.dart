import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'tablet_body.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => keyScaffold.currentState!.openDrawer(),
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
      ),
      body: const TabletBody(),
    );
  }
}
