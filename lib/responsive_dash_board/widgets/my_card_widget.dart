import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_styles.dart';
import '../utils/spacing.dart';
import 'content_card.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: Colors.black,
          ),
        ),
        verticalSpace(15),
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF49ACE3),
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage(Assets.imagesMaskgroup),
              ),
            ),
            child: const ContentCard(),
          ),
        ),
      ],
    );
  }
}
