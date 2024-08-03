import 'package:flutter/material.dart';

import 'component2.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const Component2(),
      itemCount: 20,
    );
  }
}
