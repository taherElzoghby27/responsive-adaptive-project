import 'package:flutter/material.dart';

import 'component.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .175,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const AspectRatio(
            aspectRatio: 1,
            child: Component(),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
