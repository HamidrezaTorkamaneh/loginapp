import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/idea_item4.dart';
import 'package:loginapp/widgets/reply_item.dart';

import '../../widgets/appbar_button.dart';
import '../../widgets/comment_item.dart';
import '../../widgets/cusotm_icon.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/menu_item.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: CustomColor.backGroundColor,
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'نظرات ایده ها',
          centerTitle: true,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IdeaItem4(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                CustomIcon(
                    icon: 'comment', color: CustomColor.greyColor1, size: 25),
                SizedBox(width: 10),
                Text(
                  'نظرات کاربران',
                  style: theme.textTheme.bodyText2?.apply(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          CommentItem(),
          ReplyItem(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: CustomColor.greenColor2,
                  maxRadius: 22,
                  child: CustomIcon(icon: 'send', color: Colors.white, size: 15),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.attach_file,
                  color: CustomColor.greyColor1,
                ),
                SizedBox(width: 10),
                Container(
                  width: 200,
                  height: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    style: theme.textTheme.headline3?.apply(
                        fontSizeDelta: 2
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'پیام خود را اینجا تایپ کنید....',
                      hintStyle: theme.textTheme.headline3?.apply(
                        fontSizeDelta: 2
                      ),
                    ),
                  ),
                ),
                Spacer(),
                CustomIcon(
                    icon: 'emoji', color: CustomColor.greenColor2, size: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
