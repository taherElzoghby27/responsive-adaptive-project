import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/widgets/custom_drawer.dart';
import 'package:responsive_adaptive/task1/widgets/mobile_body.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
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
      body: const ScreenMobileBody(),
    );
  }
}
