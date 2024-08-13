import 'package:flutter/material.dart';

class ContainerBorder extends StatelessWidget {
  const ContainerBorder({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xFFF1F1F1),
          ),
        ),
      ),
      child: child,
    );
  }
}
