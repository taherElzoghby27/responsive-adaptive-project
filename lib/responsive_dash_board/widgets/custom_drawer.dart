import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_assets.dart';

import 'list_tile_info_widget.dart';

class CustomDrawerDashBoard extends StatelessWidget {
  const CustomDrawerDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTileInfoWidget(
          image: Assets.imagesAvatar3,
          title: 'Lekan Okeowo',
          subTitle: 'demo@gmail.com',
        ),
      ],
    );
  }
}
