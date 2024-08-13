import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderExpenseComponent extends StatelessWidget {
  const HeaderExpenseComponent({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFFFAFAFA),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ],
    );
  }
}
