import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/widgets/active_tile_list_info_widget.dart';

import '../models/drawer_item_model.dart';
import 'in_active_tile_list_info_widget.dart';

class ListViewDrawerItems extends StatefulWidget {
  const ListViewDrawerItems({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  State<ListViewDrawerItems> createState() => _ListViewDrawerItemsState();
}

class _ListViewDrawerItemsState extends State<ListViewDrawerItems> {
  int indexItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          if (indexItem != index) {
            setState(() => indexItem = index);
          }
        },
        child: indexItem == index
            ? ActiveTileListInfoWidget(
                drawerItemModel: widget.items[index],
              )
            : InActiveTileListInfoWidget(
                drawerItemModel: widget.items[index],
              ),
      ),
      itemCount: widget.items.length,
    );
  }
}
