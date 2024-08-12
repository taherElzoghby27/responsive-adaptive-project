import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'tile_list_info_widget.dart';

class ListViewDrawerItems extends StatelessWidget {
  const ListViewDrawerItems({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => TileListInfoWidget(
        drawerItemModel: items[index],
      ),
      itemCount: items.length,
    );
  }
}
