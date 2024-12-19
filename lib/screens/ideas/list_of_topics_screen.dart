import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/header.dart';
import 'package:loginapp/widgets/list_topic_item.dart';

import '../../widgets/appbar_button.dart';
import '../../widgets/cusotm_icon.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/menu_item.dart';

class ListOfTopicsScreen extends StatelessWidget {
  const ListOfTopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    List<String> list = [
      'ایده های پیشنهادی',
      'فردی',
      'عملیاتی اجرایی',
      'مشاغل',
      'فضای مجازی',
      'خیریه',
    ];
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
                  color: CustomColor.greyColor1,
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
              color: CustomColor.greyColor1,
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(70),
      ),
      body: Column(
        children: [
          Header(text: 'ایده های مهدوی-موضوعات'),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTopicItem(
                  topic: list[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


