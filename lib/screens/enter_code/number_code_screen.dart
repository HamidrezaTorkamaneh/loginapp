import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:loginapp/widgets/count_down.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/input_information.dart';
import 'package:loginapp/widgets/my_button2.dart';
import 'package:loginapp/widgets/my_text_button.dart';
import 'package:loginapp/widgets/otp.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../../widgets/alert.dart';
import '../../widgets/appbar_button.dart';
import '../../widgets/circle_item.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_image.dart';

class NumberCodeScreen extends StatefulWidget {
  String number;

  NumberCodeScreen({super.key, required this.number});

  @override
  State<NumberCodeScreen> createState() => _NumberCodeScreenState();
}

class _NumberCodeScreenState extends State<NumberCodeScreen> {
  int _seconds = 0;
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  void stopTimer() {
    _timer?.cancel();
    _seconds = 0;
  }

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
            padding: EdgeInsets.fromLTRB(22, 110, 22, 20),
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
                InputInformation(
                  input: widget.number.toString(),
                  icon: 'call',
                  typeName: 'شماره همراه',
                ),
                SizedBox(height: 20),
                OTP(),
                SizedBox(height: 20),
                Row(
                  children: [
                    CustomIcon(
                        icon: 'clock', color: CustomColor.greenColor, size: 25),
                    SizedBox(width: 10),
                    Text(
                      'زمان باقی مانده تا ارسال مجدد',
                      style: theme.textTheme.headline5,
                    ),
                    Spacer(),
                    AddTimer(),
                  ],
                ),
                SizedBox(height: 15),
                MyButton2(
                  text: 'تایید و ورود',
                  ontap: () {},
                ),
                MyTextButton(
                  text: 'تغییر شماره همراه',
                  icon: 'return',
                  ontap: () {
                    Navigator.of(context).pop();
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
