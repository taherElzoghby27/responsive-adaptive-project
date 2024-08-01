import 'package:flutter/material.dart';
import 'package:responsive_adaptive/task1/widgets/screen_body.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.settings),
      ),
      body: const ScreenBody(),
    );
  }
}
