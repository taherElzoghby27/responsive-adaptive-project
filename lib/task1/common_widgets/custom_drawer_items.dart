
import 'package:flutter/material.dart';

class CustomDrawerItems extends StatelessWidget {
  const CustomDrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('D A S H B O A R D'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('S E T T I N G S'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('A B O U T'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('L O G O U T'),
          onTap: () {},
        ),
      ],
    );
  }
}
