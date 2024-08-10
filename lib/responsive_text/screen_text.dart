import 'package:flutter/material.dart';

import 'responsive_text_body.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ResponsiveTextBody(),
    );
  }
}
