import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class Header extends StatelessWidget{
  String text;
  Header({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Color(0xff1fbd89),
                Color(0xff209537),
              ],
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/effect3.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 255, 255, 255).withOpacity(0.05),
                  BlendMode.modulate),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                Text(
                  text,
                  style: theme.textTheme.bodyText2,
                ),
                Spacer(),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: CustomColor.greenColor2,
                  ),
                  child: Center(
                    child: CustomIcon(icon: 'check_list', color: Colors.white , size: 30),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

}