import 'package:flutter/material.dart';

import 'custom_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite, size: 50),
          ),
          CustomDrawerItems(),
        ],
      ),
    );
  }
}
