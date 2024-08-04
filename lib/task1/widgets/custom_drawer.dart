import 'package:flutter/material.dart';

import 'custom_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(.8),
      child: ListView(
        children: const [
          DrawerHeader(
            child: Icon(Icons.favorite, size: 50),
          ),
          CustomDrawerItems(),
        ],
      ),
    );
  }
}
