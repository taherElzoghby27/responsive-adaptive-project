import 'package:flutter/material.dart';

import 'desktop_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const DesktopBody(),
    );
  }
}
