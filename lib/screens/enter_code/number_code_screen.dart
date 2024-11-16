import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/widgets/input_information.dart';
import '../../widgets/alert.dart';
import '../../widgets/appbar_button.dart';
import '../../widgets/circle_item.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/my_button2.dart';
import '../../widgets/my_text_button.dart';
import '../../widgets/my_textfield.dart';
import '../signup_screens/signup_by_number_screen.dart';

class NumberCodeScreen extends StatelessWidget {
  String number;
  NumberCodeScreen({super.key, required this.number});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      CircleItem(icon: 'rating'),
                      Opacity(
                        opacity: 0.2,
                        child: CustomImage(image: 'effect2', size: 110),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 150),
                Text(
                  'ورود کد تایید ارسالی',
                  style: theme.textTheme.subtitle1,
                ),
                SizedBox(height: 20),
                Text(
                  'یک کد هویت سنجی ۵ رقمی برای شماره موبایل شما ارسال شد است. آن را در کادر زیر وارد کنید.',
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Center(
                  child: Alert(text: 'کد تایید وارد شده اشتباه است'),
                ),
                SizedBox(height: 20),
                InputInformation(input: number.toString(), icon: 'call', typeName: 'شماره همراه')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
