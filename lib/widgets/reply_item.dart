import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class ReplyItem extends StatelessWidget{
  const ReplyItem({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Container(
      margin: EdgeInsets.only(left: 45, right: 22, top: 10, bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomIcon(
                  icon: 'reply', color: CustomColor.greyColor2, size: 20),
              Text(
                'در پاسخ به سامان قربان زاده',
                style: theme.textTheme.headline3?.apply(
                  fontFamily: 'YB',
                  color: CustomColor.greyColor2,
                ),
              ),
            ],
          ),
          Divider(
            height: 15,
            color: CustomColor.greyColor2,
          ),
          Row(
            children: [
              Text(
                'سامان قربان زاده',
                style: theme.textTheme.headline3?.apply(
                  fontFamily: 'YB',
                ),
              ),
              SizedBox(width: 10),
              Text(
                '۳ روز قبل',
                style: theme.textTheme.headline3?.apply(
                  color: Colors.black26,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'در اعتقاد به منجی و ولی کامل باوری مقطعی و مربوط به شرایط و وضعیت خاص گذشته یا حال یا آینده نیست، بلکه از باورهای اساسی در همه ادیان است.',
            textAlign: TextAlign.justify,
            style: theme.textTheme.headline3?.apply(
              fontSizeDelta: 1,
              heightDelta: 0.5,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'حذف پیام',
                style: theme.textTheme.headline3
                    ?.apply(color: Colors.black54),
              ),
              CustomIcon(
                  icon: 'delete',
                  color: CustomColor.greyColor2,
                  size: 30),
              SizedBox(width: 10),
              Text(
                'پاسخ دادن',
                style: theme.textTheme.headline3
                    ?.apply(color: Colors.black54),
              ),
              CustomIcon(
                  icon: 'reply',
                  color: CustomColor.greenColor2,
                  size: 20),
            ],
          )
        ],
      ),
    );
  }

}