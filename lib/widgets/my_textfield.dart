import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class MyTextField extends StatelessWidget {
  String text;
  String icon;
  TextInputType textInputType;
  MyTextField({super.key, required this.text, required this.icon,required this.textInputType});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          TextField(
            keyboardType: textInputType,
            style: theme.textTheme.headline1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 50),
              border: InputBorder.none,
              hintText: text,
              hintStyle: theme.textTheme.headline1,
            ),
          ),
          CustomIcon(icon: icon, color: CustomColor.greenColor, size: 28),
        ],
      ),
    );
  }
}
