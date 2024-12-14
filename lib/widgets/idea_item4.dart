import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class IdeaItem4 extends StatelessWidget{
  const IdeaItem4({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'مهدی یاران',
                style: theme.textTheme.bodyText2?.apply(
                  color: Colors.black,
                ),
              ),
              Spacer(),
              CustomIcon(
                  icon: 'list_comment',
                  color: CustomColor.greenColor2,
                  size: 30),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'نقش انقلاب اسلامی در اصلاح نگاه به آینده از دیدگاه اسلام در مطرح دشن اندیشه انتظار',
            style: theme.textTheme.headline3
                ?.apply(heightDelta: 0.7, fontSizeDelta: 2),
          ),
        ],
      ),
    );

  }

}