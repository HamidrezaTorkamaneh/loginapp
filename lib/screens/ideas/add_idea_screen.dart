import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/widgets/header.dart';
import 'package:loginapp/widgets/my_button2.dart';

import '../../widgets/appbar_button.dart';
import '../../widgets/cusotm_icon.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_color.dart';
import '../../widgets/menu_item.dart';

class AddIdeaScreen extends StatelessWidget {
  const AddIdeaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: CustomColor.backGroundColor,
      appBar: PreferredSize(
        child: CustomAppBar(
          systemUiOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: CustomColor.backGroundColor,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: CustomColor.backGroundColor,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          actions: [
            PopupMenuButton(
              offset: Offset(45, 0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
              elevation: 0,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: CustomIcon(
                  icon: 'menu',
                  size: 25,
                  color: CustomColor.greyColor,
                ),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: MenuItem(
                    icon: 'home',
                    text: 'بازگشت به صفحه اصلی',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: AppbarButton(
              icon: 'arrow_back_circle',
              size: 60,
              color: CustomColor.greyColor,
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(70),
      ),
      body: Column(
        children: [
          Header(text: 'ارسال ایده'),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 22),
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                    children: [
                      CustomIcon(
                          icon: 'file',
                          color: CustomColor.greenColor2,
                          size: 30),
                      SizedBox(width: 10),
                      Text(
                        'ارسال ایده های مهدوی شما',
                        style: theme.textTheme.headline4
                            ?.apply(color: Colors.black, fontFamily: 'YB'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ایده ارسالی شما پس از بررسی و تایید کارشناسان دوازده، در لیست ایده ها جهت استفاده عموم قرار خواهد گرفت.',
                    style: theme.textTheme.headline5?.apply(
                      color: Colors.black54,
                      heightDelta: 0.5,
                      fontSizeDelta: 1,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          MyButton2(text: 'ارسال ایده', ontap: () {})
        ],
      ),
    );
  }
}
