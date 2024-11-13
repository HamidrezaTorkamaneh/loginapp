import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/screens/signup_screens/signup_screen.dart';
import '../../widgets/appbar_button.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/my_button1.dart';
import '../../widgets/my_text_button.dart';
import 'login_by_email_screen.dart';

import 'login_by_number_screen.dart';


class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme=Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: CustomAppBar(
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
              color: Colors.white,
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(70),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(22, 110, 22, 60),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/effect1.png'),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff3ddac3),
              // Color(0xff6a78eb),
              Color(0xff7f4cff),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  CustomImage(image: 'ellipse1', size: 110),
                  Opacity(
                    opacity: 0.2,
                    child: CustomImage(image: 'effect2', size: 110),
                  ),
                ],
              ),
            ),
            SizedBox(height: 180),
            Text(
              'ورود کاربران',
              style: theme.textTheme.subtitle1,
            ),
            SizedBox(height: 20),
            Text(
              'در صورت ورود در اپلیکیشن دوازده، ضمن برخورداری از تمامی امکانات برنامه، قابلیت شخصی سازی منوها برای شما فراهم می شود.',
              style: theme.textTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 60),
            MyButton1(text: 'ورود با شماره همراه', icon: 'call', ontap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginByNumberScreen(),
                ),
              );
            }),
            SizedBox(height: 20),
            MyButton1(
              text: 'ورود  با ایمیل',
              icon: 'email',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginByEmailScreen(),
                  ),
                );
              },
            ),
            Spacer(),
            MyTextButton(
              text: 'عضویت',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              }, icon: 'arrow_left_circle',
            ),
          ],
        ),
      ),
    );
  }

}