import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/spacing.dart';
import 'container_border.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerBorder(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              'Monthly',
              style: AppStyles.styleMedium16(context),
            ),
            horizontalSpace(8),
            Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xFF064061),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
