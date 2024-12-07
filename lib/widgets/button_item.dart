import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class ButtonItem extends StatelessWidget {
  String text;
  String icon;
  void Function() onTap;
   ButtonItem({super.key,required this.text,required this.icon,required this.onTap});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: 71,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

      ),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        child: InkWell(
          highlightColor: CustomColor.greenShadowColor,
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(
                icon:icon,
                color: Colors.black26,
                size: 25,
              ),
              SizedBox(height: 8),
              Text(
                text,
                style: theme.textTheme.headline5?.apply(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}