import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_assets.dart';

import '../utils/spacing.dart';
import 'in_active_tile_list_info_widget.dart';
import 'list_tile_info_widget.dart';
import 'listview_drawer_items.dart';

class CustomDrawerDashBoard extends StatelessWidget {
  const CustomDrawerDashBoard({super.key});
  static final List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  static final List<DrawerItemModel> endItems = [
    DrawerItemModel(image: Assets.imagesSettings, title: "Setting system"),
    DrawerItemModel(image: Assets.imagesLogout, title: "Logout account"),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: ListTileInfoWidget(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
        ),
        SliverToBoxAdapter(child: verticalSpace(8)),
        ListViewDrawerItems(items: items),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              InActiveTileListInfoWidget(drawerItemModel: endItems[0]),
              InActiveTileListInfoWidget(drawerItemModel: endItems[1]),
            ],
          ),
        ),
        SliverToBoxAdapter(child: verticalSpace(8)),
      ],
    );
  }
}
