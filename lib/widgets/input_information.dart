import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class InputInformation extends StatelessWidget{
  String input;
  String icon;
  String typeName;
  InputInformation({super.key,required this.input,required this.icon,required this.typeName});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Container(
      width: double.infinity,
      height: 40,
      padding: EdgeInsets.symmetric(
        horizontal: 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text(
              '$typeName شما',
              style: theme.textTheme.headline3
          ),
          Spacer(),
          Text(input,style: theme.textTheme.headline4),
          SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: CustomIcon(icon: icon , color: CustomColor.greenColor, size: 17),
          )
        ],
      ),
    );
  }

}