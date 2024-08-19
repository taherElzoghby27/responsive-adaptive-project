import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';

import '../models/drawer_item_model.dart';

class InActiveTileListInfoWidget extends StatelessWidget {
  const InActiveTileListInfoWidget({
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
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
