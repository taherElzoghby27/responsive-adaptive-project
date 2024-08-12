import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';

import '../models/drawer_item_model.dart';

class ActiveTileListInfoWidget extends StatelessWidget {
  const ActiveTileListInfoWidget({
    super.key,
    required this.drawerItemModel,
  });
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(
          drawerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
        trailing: Container(
          width: 3.27,
          color: const Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
