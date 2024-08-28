import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          verticalSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name card",
                    style: AppStyles.styleRegular14(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    "Syah Bandi",
                    style: AppStyles.styleSemiBold18(context),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(Assets.imagesGallery),
              horizontalSpace(10),
            ],
          ),
          const Spacer(),
          Text(
            "0918 8124 0042 8129",
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
          verticalSpace(12),
          Text(
            "12/20 - 124",
            style: AppStyles.styleRegular16(context).copyWith(
              color: Colors.white,
            ),
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
