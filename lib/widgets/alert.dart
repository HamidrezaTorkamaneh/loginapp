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
      width: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: CustomColor.redColor),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Row(
            children: [
              CustomIcon(
                icon: 'alert',
                color: Colors.red,
                size: 16,
              ),
              Spacer(),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'EM',
                  fontSize: 7.5,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
