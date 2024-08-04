import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
      ),
      onTap: () {},
    );
  }
}
