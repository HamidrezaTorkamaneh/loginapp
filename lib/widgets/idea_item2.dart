import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class IdeaItem2 extends StatelessWidget{
  const IdeaItem2({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColor.backGroundColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIcon(
                        icon: 'light',
                        color: CustomColor.greenColor2,
                        size: 20),
                    SizedBox(width: 5),
                    Text(
                      'ایده ۵۴',
                      style: theme.textTheme.headline3?.apply(
                        color: Colors.black,
                        fontFamily: 'YB',
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomIcon(
                  icon: 'contact',
                  color: CustomColor.greyColor2,
                  size: 20),
              SizedBox(width: 10),
              Text(
                'کامران مهدوری فر',
                style: theme.textTheme.headline3?.apply(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.',
            style: theme.textTheme.headline4?.apply(
              color: Colors.black,
              fontFamily: 'YB',
              heightDelta: 0.5,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CustomIcon(
                  icon: 'file',
                  color: CustomColor.greenColor2,
                  size: 20),
              SizedBox(width: 10),
              Text(
                'دسته بندی مطلب',
                style: theme.textTheme.headline3?.apply(
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}