import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/screens/enter_code/email_code_screen.dart';
import 'package:loginapp/screens/signup_screens/signup_by_number_screen.dart';
import 'package:loginapp/widgets/alert.dart';
import 'package:loginapp/widgets/circle_item.dart';
import 'package:loginapp/widgets/my_button2.dart';
import 'package:loginapp/widgets/my_text_button.dart';
import 'package:loginapp/widgets/my_textfield.dart';
import '../../widgets/appbar_button.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_image.dart';

class SignupByEmailScreen extends StatelessWidget {
  const SignupByEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
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
                      CircleItem(icon: 'email'),
                      Opacity(
                        opacity: 0.2,
                        child: CustomImage(image: 'effect2', size: 110),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 150),
                Text(
                  'عضویت با ایمیل',
                  style: theme.textTheme.subtitle1,
                ),
                SizedBox(height: 20),
                Alert(text: 'ایمیل وارد شده استباه است'),
                SizedBox(height: 20),
                MyTextField(
                    text: 'نام کاربری',
                    icon: 'user',
                    textInputType: TextInputType.text),
                SizedBox(height: 20),
                MyTextField(
                    text: 'ایمیل',
                    icon: 'email',
                    textInputType: TextInputType.emailAddress),
                SizedBox(height: 20),
                MyButton2(
                    text: 'عضویت و ادامه',
                    ontap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EmailCodeScreen(),
                        ),
                      );
                    }),
                SizedBox(height: 10),
                MyTextButton(
                  text: 'عضویت با شماره همراه',
                  ontap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignupByNumberScreen(),
                      ),
                    );
                  },
                  icon: 'call',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
