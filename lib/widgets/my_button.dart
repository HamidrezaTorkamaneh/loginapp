import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';

class MyButton extends StatelessWidget{
  void Function() ontap;
  String text;
  String icon;
  MyButton({super.key,required this.text,required this.icon,required this.ontap});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return  Container(

      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          colors: [
            Color(0xff0fd9b2),
            Color(0xff1dc3be),
          ],
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(25),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                Text(
                  text,
                  style: theme.textTheme.bodyText2,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: CustomIcon(
                    icon: icon,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}