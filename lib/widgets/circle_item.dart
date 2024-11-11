import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cusotm_icon.dart';
import 'custom_color.dart';

class CircleItem extends StatelessWidget {
  String icon;

  CircleItem({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 55,
      backgroundColor: CustomColor.purpleColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Center(
          child: CustomIcon(icon: icon, color: Colors.white, size: 50),
        ),
      ),
    );
  }
}
