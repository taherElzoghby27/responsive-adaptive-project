import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderExpenseComponent extends StatelessWidget {
  const HeaderExpenseComponent({
    super.key,
    required this.image,
    this.color,
    this.backgroundColor,
  });
  final String image;
  final Color? color;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor ?? const Color(0xFFFAFAFA),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                color ?? const Color(0xFF4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: color ?? const Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
