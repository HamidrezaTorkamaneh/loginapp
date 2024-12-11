import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/get_floating_action_button.dart';
import 'package:loginapp/widgets/header.dart';

import 'package:loginapp/widgets/sort_idea_item.dart';

import '../../widgets/appbar_button.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/idea_items1.dart';

class MahdaviIdeasScreen extends StatefulWidget {
  const MahdaviIdeasScreen({super.key});

  @override
  State<MahdaviIdeasScreen> createState() => _MahdaviIdeasScreenState();
}

class _MahdaviIdeasScreenState extends State<MahdaviIdeasScreen> {
  bool isFabVisible = true;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
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
      backgroundColor: CustomColor.backGroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Header(
              text: 'ایده‌های مهدوی',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              height: 780,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return IdeaItems1();
                  },
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: SortIdeaItem(),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 70, left: 8),
        child: Visibility(
          // visible:,
          child: GetFloatingActionButton(),
        ),
      ),
    );
  }
}
