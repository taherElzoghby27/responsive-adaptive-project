import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: AppStyles.styleRegular14(context),
        border: fieldBorder(),
        enabledBorder: fieldBorder(),
      ),
    );
  }

  OutlineInputBorder fieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
