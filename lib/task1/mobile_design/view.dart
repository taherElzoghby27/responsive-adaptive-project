import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/common_widgets/custom_drawer.dart';
import 'package:responsive_adaptive/task1/mobile_design/widgets/screen_body.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
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
