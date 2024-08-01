import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/common_widgets/custom_drawer.dart';
import 'package:responsive_adaptive/task1/mobile_design/widgets/screen_body.dart';

class ScreenMobile extends StatefulWidget {
  const ScreenMobile({super.key});

  @override
  State<ScreenMobile> createState() => _ScreenMobileState();
}

class _ScreenMobileState extends State<ScreenMobile> {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
      drawer: const CustomDrawer(),
      backgroundColor: Colors.grey.withOpacity(.5),
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
