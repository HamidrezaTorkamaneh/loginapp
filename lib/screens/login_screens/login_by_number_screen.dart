import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/screens/enter_code/number_code_screen.dart';

import '../../widgets/alert.dart';
import '../../widgets/appbar_button.dart';
import '../../widgets/circle_item.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/my_button2.dart';
import '../../widgets/my_text_button.dart';
import '../../widgets/my_textfield.dart';
import 'login_by_email_screen.dart';


class LoginByNumberScreen extends StatelessWidget{
  const   LoginByNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController= TextEditingController();
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: CustomAppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(22, 110, 22, 40),
            height: MediaQuery.sizeOf(context).height,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      CircleItem(icon: 'call'),
                      Opacity(
                        opacity: 0.2,
                        child: CustomImage(image: 'effect2', size: 110),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  'ورود با شماره همراه',
                  style: theme.textTheme.subtitle1,
                ),
                SizedBox(height: 20),
                Alert(text: 'شماره همراه وارد شده اشتباه است'),
                SizedBox(height: 20),
                MyTextField(
                  controller: numberController,
                    text: 'شماره موبایل',
                    icon: 'call',
                    textInputType: TextInputType.number),
                SizedBox(height: 20),
                MyButton2(text: 'ورود به برنامه', ontap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NumberCodeScreen(number: numberController.text),
                    ),
                  );
                }),
                SizedBox(height: 10),
                MyTextButton(
                  text: 'ورود با ایمیل',
                  ontap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginByEmailScreen(),
                      ),
                    );
                  },
                  icon: 'email',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}