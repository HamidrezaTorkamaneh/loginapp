import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/widgets/category_item.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/font_size.dart';
import 'package:loginapp/widgets/my_button2.dart';

class FontDialog extends StatelessWidget {
  const FontDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 40),
      width: double.infinity,
      height: 520,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white70,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomIcon(
                  icon: 'file', color: CustomColor.greenColor2, size: 30),
              SizedBox(width: 10),
              Text(
                'تغییرات فونت',
                style: theme.textTheme.bodyText2?.apply(color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20),
          CategoryItem(text: 'نوع فونت را انتخاب کنید', icon: 'font_style'),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                'اندازه و سایز فونت',
                style: theme.textTheme.headline4?.apply(
                  fontFamily: 'YB',
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CustomIcon(
                        icon: 'pin', color: CustomColor.greenColor2, size: 32),
                    Spacer(),
                    Text(
                      'سایز بزرک',
                      style: theme.textTheme.headline5?.apply(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: CustomColor.backGroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff539dd6),
                        Color(0xff6e84e1),
                      ],
                    ),
                  ),
                ),

              ],
            ),

          ),
          SizedBox(height: 20),
          Container(
            height: 80,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FontSize(name: 'ضخیم'),
                FontSize(name: 'معمولی'),
                FontSize(name: 'نازک'),
              ],
            ),
          ),
          SizedBox(height: 20),
          MyButton2(text: 'ذخیره تغییرات', ontap: (){}),
        ],
      ),
    );
  }
}
