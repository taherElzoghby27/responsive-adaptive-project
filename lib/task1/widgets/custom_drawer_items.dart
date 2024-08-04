import 'package:flutter/material.dart';

import 'drawer_tile.dart';

class CustomDrawerItems extends StatelessWidget {
  const CustomDrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        DrawerTile(
          icon: Icons.home,
          title: 'D A S H B O A R D',
        ),
        DrawerTile(
          icon: Icons.settings,
          title: 'S E T T I N G S',
        ),
        DrawerTile(
          icon: Icons.info,
          title: 'A B O U T',
        ),
        DrawerTile(
          icon: Icons.logout,
          title: 'L O G O U T',
        ),
      ],
    );
  }
}
