import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/screens/ideas/detail_idea_screen.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class IdeaItem1 extends StatelessWidget {
  const IdeaItem1({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        hoverColor: Colors.transparent,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailIdeaScreen(),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 25),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
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
                      icon: 'file', color: CustomColor.greenColor2, size: 20),
                  SizedBox(width: 5),
                  Text(
                    'ایده‌های پیشنهادی',
                    style: theme.textTheme.headline3?.apply(
                      color: Colors.black,
                      fontFamily: 'YB',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'مسلم زمان',
                style: theme.textTheme.headline4?.apply(
                  fontFamily: 'YB',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.',
                textAlign: TextAlign.justify,
                style: theme.textTheme.headline3?.apply(
                  color: Colors.black,
                  heightDelta: 0.5,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  CustomIcon(
                      icon: 'arrow_forward_circle',
                      color: CustomColor.greyColor1,
                      size: 30),
                  Text(
                    'جزییات',
                    style: theme.textTheme.headline5?.apply(
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
