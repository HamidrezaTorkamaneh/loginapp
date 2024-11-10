import 'package:flutter/material.dart';
import 'cusotm_icon.dart';

class AppbarButton extends StatelessWidget {
  AppbarButton({
    super.key,
    required this.icon,
    required this.size,
    required this.color,
    this.onTap,
  });

  String icon;
  double size;
  Color color;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: Material(
        borderRadius: BorderRadius.circular(22),
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(22),
          child: CustomIcon(
            icon: icon,
            size: size,
            color: color,
          ),
        ),
      ),
    );
  }
}
