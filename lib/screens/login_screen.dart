import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_image.dart';
import 'package:loginapp/widgets/my_button.dart';
import '../widgets/appbar_button.dart';
import '../widgets/custom_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 130),
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
              SizedBox(height: 200),
              Text(
                'ورود کاربران',
                style: theme.textTheme.subtitle1,
              ),
              SizedBox(height: 20),
              Text(
                'درصورت ورود در اپلیکیشن دوازده، ضمن برخورداری از تمامی امکانات برنامه، قابلیت شخصی سازی منوها برای شما فراهم می شود.',
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 60),
              MyButton(text: 'ورود با شماره همراه', icon: 'call',ontap: (){}),
              SizedBox(height: 20),
              MyButton(text: 'ورود با ایمیل', icon: 'email',ontap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
