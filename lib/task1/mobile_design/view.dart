import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/mobile_design/widgets/screen_body.dart';

class ScreenMobile extends StatelessWidget {
  const ScreenMobile({super.key});

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
      body: const ScreenMobileBody(),
    );
  }
}
