import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';

class MyTextButton extends StatelessWidget {
  String text;
  String icon;
  void Function() ontap;

  MyTextButton({super.key, required this.text,required this.icon,required this.ontap});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: theme.textTheme.bodyText1?.apply(fontSizeDelta: 3),
            ),
            SizedBox(width: 10),
            CustomIcon(icon: icon, color: Colors.white, size: 25)
          ],
        ),
      ),
    );
  }
}
