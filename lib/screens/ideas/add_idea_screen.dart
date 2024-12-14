import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/widgets/category_item.dart';
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
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(text: 'ارسال ایده'),
              SizedBox(height: 25),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                width: double.infinity,
                height: 500,
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
                      SizedBox(height: 20),
                      CategoryItem(
                          text: 'دسته بندی را انتخاب کنید', icon: 'file'),
                      SizedBox(height: 15),
                      getTitle(context),
                      SizedBox(height: 15),
                      getDetail(context),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: MyButton2(text: 'ارسال ایده', ontap: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getTitle(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: CustomColor.backGroundColor,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, right: 30),
            height: double.infinity,
            width: 200,
            child: TextField(
              style: theme.textTheme.headline4?.apply(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  hintText: 'عنوان ایده شما',
                  hintStyle: theme.textTheme.headline4?.apply(
                    // fontFamily: 'YB',
                    color: Colors.black,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Spacer(),
          Container(
            height: double.infinity,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: CustomIcon(icon: 'document', color: Colors.grey, size: 30),
            ),
          )
        ],
      ),
    );
  }

  Widget getDetail(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: CustomColor.backGroundColor,
      ),
      child: Container(
        padding: EdgeInsets.only(top: 15, right: 30, left: 30),
        height: double.infinity,
        width: 80,
        child: TextField(
          maxLines: 20,
          style: theme.textTheme.headline4?.apply(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'شرح ایده شما',
            hintStyle: theme.textTheme.headline4?.apply(
              fontFamily: 'YM',
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
