import 'package:flutter/material.dart';

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
