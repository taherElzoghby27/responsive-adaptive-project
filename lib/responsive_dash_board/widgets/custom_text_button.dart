import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        overlayColor: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Text(
        label,
        style: AppStyles.styleSemiBold18(context).copyWith(
          color: const Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
