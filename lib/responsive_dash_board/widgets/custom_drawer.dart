import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_assets.dart';

import '../utils/app_styles.dart';

class CustomDrawerDashBoard extends StatelessWidget {
  const CustomDrawerDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: const Color(0xFFFFFFFF),
          child: ListTile(
            leading: SvgPicture.asset(Assets.imagesAvatar3),
            title: Text(
              'Lekan Okeowo',
              style: AppStyles.styleSemiBold16(context),
            ),
            subtitle: Text(
              'demo@gmail.com',
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ],
    );
  }
}
