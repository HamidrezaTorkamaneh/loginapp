import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class ListTopicItem extends StatelessWidget{
  String topic;
  ListTopicItem({super.key,required this.topic});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22,vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 22),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(22),
        color: Colors.transparent,
        child: InkWell(
          overlayColor: MaterialStateColor.resolveWith((states) => CustomColor.greenShadowColor),
          onTap: (){},
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(
                icon: 'file',
                color: CustomColor.greenColor2,
                size: 25,
              ),
              SizedBox(width: 10),
              Text(
                topic,
                style: theme.textTheme.headline5?.apply(
                    color: Colors.black, fontFamily: 'YB', fontSizeDelta: 2),
              ),
              Spacer(),
              CustomIcon(
                icon: 'arrow_bottom',
                color: CustomColor.greyColor1,
                size: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

}