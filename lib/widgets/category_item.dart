import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class CategoryItem extends StatelessWidget{
  String icon;
  String text;
  CategoryItem({super.key,required this.text,required this.icon});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: CustomColor.backGroundColor,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, right: 30),
            height: double.infinity,
            width: 200,
            child: TextField(
              style: theme.textTheme.headline4?.apply(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  hintText: text,
                  hintStyle: theme.textTheme.headline4?.apply(
                    fontFamily: 'YB',
                    color: Colors.black,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Spacer(),
          Container(
            height: double.infinity,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffeef1fd),
            ),
            child: Center(
              child: CustomIcon(
                  icon: icon, color: CustomColor.greenColor2, size: 30),
            ),
          )
        ],
      ),
    );
  }

}