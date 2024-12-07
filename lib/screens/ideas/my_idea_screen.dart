import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/get_floating_action_button.dart';
import 'package:loginapp/widgets/header.dart';
import 'package:loginapp/widgets/idea_item3.dart';

import '../../widgets/appbar_button.dart';
import '../../widgets/custom_appbar.dart';

class MyIdeaScreen extends StatelessWidget {
  const MyIdeaScreen({super.key});

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
            AppbarButton(
              icon: 'search',
              size: 60,
              color: CustomColor.greyColor1,
            )
          ],
          leading: InkWell(
            onTap: () {
              //Navigator.pop(context);
              if (Platform.isAndroid) {
                SystemNavigator.pop(animated: true);
              } else {
                exit(0);
              }
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
          Header(text: 'ایده های مهدوی - ایده های من'),
          SizedBox(height: 20),
          IdeaItem3(text: 'تایید شده', color: CustomColor.greenShadowColor),
          SizedBox(height: 20),
          IdeaItem3(text: 'تایید نشده', color: CustomColor.redShadowColor),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40, left: 10),
        child: GetFloatingActionButton(),
      ),
    );
  }
}
