import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';

class MenuItem extends StatelessWidget {
  MenuItem({
    super.key,
    required this.icon,
    required this.text,
  });

  String icon;
  String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      children: [
        CustomIcon(
          icon: icon,
          size: 22,
          color: Colors.grey,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: theme.textTheme.headline5?.apply(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
