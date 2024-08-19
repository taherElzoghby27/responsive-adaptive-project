import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import 'custom_text_field.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({
    super.key,
    required this.title,
    required this.hint,
  });
  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        verticalSpace(10),
        CustomTextField(hint: hint),
      ],
    );
  }
}
