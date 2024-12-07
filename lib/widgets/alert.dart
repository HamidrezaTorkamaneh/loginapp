import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class Alert extends StatelessWidget {
  String text;

  Alert({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: CustomColor.redShadowColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIcon(
            icon: 'alert',
            color: Colors.red,
            size: 16,
          ),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'EM',
              fontSize: 9.5,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
