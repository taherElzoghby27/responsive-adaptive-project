import 'package:flutter/material.dart';

class ResponsiveTextBody extends StatelessWidget {
  const ResponsiveTextBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome",
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "Hello Every Body",
          style: TextStyle(fontSize: 18),
        ),
        Text(
          "My name is Taher",
          style: TextStyle(fontSize: 22),
        ),
      ],
    );
  }
}
