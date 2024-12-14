import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/dialogs/font_dialog.dart';
import 'package:loginapp/widgets/button_item.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/header.dart';
import 'package:loginapp/widgets/idea_item2.dart';


import '../../dialogs/loading_dialog.dart';
import '../../widgets/appbar_button.dart';
import '../../widgets/cusotm_icon.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/menu_item.dart';

class DetailIdeaScreen extends StatelessWidget {
  const DetailIdeaScreen({super.key});

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
                  color: CustomColor.greyColor1,
                ),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: MenuItem(
                    icon: 'share',
                    text: 'اشتراک گذاری',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                PopupMenuItem(
                  child: MenuItem(
                    icon: 'report',
                    text: 'گزارش تخلف',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(text: 'ایده های مهدوی'),
            SizedBox(height: 20),
            IdeaItem2(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.روزانه به یک برای حل مشکلش با انجام کارش کمک کنید.',
                style: theme.textTheme.headline4
                    ?.apply(color: CustomColor.greyColor1, heightDelta: 0.5),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 200),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  copyText(context),
                  ButtonItem(text: 'نظرات', icon: 'comment', onTap: () {}),
                  ButtonItem(
                      text: 'علاقه‌مندی', icon: 'book_mark', onTap: () {}),
                  ButtonItem(text: 'فونت', icon: 'font', onTap: () {
                    showGeneralDialog(
                      barrierLabel: '',
                      barrierDismissible: true,
                      barrierColor: CustomColor.backGroundColor.withOpacity(0.5),
                      context: context,
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return Container();
                      },
                      transitionBuilder: (context, a1, a2, widget) {
                        return ScaleTransition(
                          scale: Tween<double>(begin: 0, end: 1).animate(a1),
                          child: const Dialog(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(22),
                                ),
                                borderSide: BorderSide.none),
                            insetPadding: EdgeInsets.symmetric(horizontal: 22),
                            child: FontDialog(),
                          ),
                        );
                      },
                    );
                  }),
                  ButtonItem(text: 'شکلک', icon: 'emoji', onTap: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget copyText(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: CustomColor.greenShadowColor,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(
                icon: 'copy',
                color: CustomColor.greenColor2,
                size: 25,
              ),
              SizedBox(height: 8),
              Text(
                'کپی متن',
                style: theme.textTheme.headline5?.apply(
                  color: Colors.black,
                  fontFamily: 'YB',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
