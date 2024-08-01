import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/desktop_design/widgets/desktop_screen_body.dart';

class DesktopDesignView extends StatelessWidget {
  const DesktopDesignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.5),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      body: const ScreenDesktopBody(),
    );
  }
}
