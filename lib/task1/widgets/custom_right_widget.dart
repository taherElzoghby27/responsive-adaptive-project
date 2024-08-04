import 'package:flutter/material.dart';

import 'component.dart';
import 'component2.dart';

class CustomRightWidget extends StatelessWidget {
  const CustomRightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Component(),
          ),
          SizedBox(height: 12),
          Expanded(
            flex: 2,
            child: Component2(),
          ),
        ],
      ),
    );
  }
}
