import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class IdeaItem3 extends StatelessWidget {
  String text;
  Color color;

  IdeaItem3({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      height: 270,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'نقش انقلاب اسلامی در اصلاح نگاه به آینده از دیدگاه اسلام در مطرح شدن اندیشه انتظار',
            style: theme.textTheme.headline3?.apply(
              fontFamily: 'YB',
              color: Colors.black,
              fontSizeDelta: 2,
              heightDelta: 1,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              CustomIcon(
                  icon: 'file', color: CustomColor.greenColor2, size: 20),
              SizedBox(width: 5),
              Text(
                'دسته بندی مطلب',
                style: theme.textTheme.headline3?.apply(
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 35),
              CustomIcon(
                  icon: 'score',
                  color: CustomColor.greenColor2,
                  size: 20),
              SizedBox(width: 5),
              Text(
                'امتیاز: ۷۰',
                style: theme.textTheme.headline3?.apply(
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 35),
              CustomIcon(
                  icon: 'clock',
                  color: CustomColor.greenColor2,
                  size: 20),
              SizedBox(width: 5),
              Text(
                'امتیاز: ۷۰',
                style: theme.textTheme.headline3?.apply(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'اعتقاد به منجی و ولی کامل باوری مقطعی و مربوط به شرایط و وضعیت خاص یا حال یا آینده نیست، بلکه از باورهای اساسی در همه ادیان است.',
            style: theme.textTheme.headline3?.apply(
              heightDelta: 1,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
            child: Center(
              child: Text(
                text,
                style: theme.textTheme.headline3,
              ),
            ),
          )
        ],
      ),
    )
    ;
  }

}