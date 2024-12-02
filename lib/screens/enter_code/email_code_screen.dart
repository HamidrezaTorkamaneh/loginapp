import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/data/data.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'package:loginapp/widgets/input_information.dart';
import 'package:loginapp/widgets/pin_code.dart';
import '../../widgets/alert.dart';
import '../../widgets/appbar_button.dart';
import '../../widgets/circle_item.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/loading_dialog.dart';
import '../../widgets/my_button2.dart';
import '../../widgets/my_text_button.dart';
import '../../widgets/otp.dart';
import '../../widgets/time_counter.dart';

class EmailCodeScreen extends StatefulWidget {
  String email;

  EmailCodeScreen({super.key, required this.email});

  @override
  State<EmailCodeScreen> createState() => _EmailCodeScreenState();
}

class _EmailCodeScreenState extends State<EmailCodeScreen> {
  int? verifyCode;

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
                  'یک کد هویت سنجی ۵ رقمی برای ایمیل شما ارسال شد است. آن را در کادر زیر وارد کنید.',
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Center(
                  child: Alert(text: 'کد تایید وارد شده اشتباه است'),
                ),
                SizedBox(height: 20),
                InputInformation(
                  input: widget.email,
                  icon: 'email',
                  typeName: 'ایمیل',
                ),
                SizedBox(height: 20),
                PinCode(
                  onChange: (verifyCode) {
                    this.verifyCode = verifyCode;
                  },
                ),
                Row(
                  children: [
                    CustomIcon(
                        icon: 'clock', color: CustomColor.greenColor1, size: 25),
                    SizedBox(width: 10),
                    Text(
                      'زمان باقی مانده تا ارسال مجدد',
                      style: theme.textTheme.headline5,
                    ),
                    Spacer(),
                    TimeCounter(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => EmailCodeScreen(
                              email: widget.email,
                            ),
                          ),
                        );
                      },
                      input: widget.email,
                      isPhone: false,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                MyButton2(
                  text: 'تایید و ورود',
                  ontap: () {
                    if (verifyCode == null) return;
                    showGeneralDialog(
                      barrierLabel: '',
                      barrierDismissible: true,
                      barrierColor: Colors.black.withOpacity(0.3),
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
                            child: LoadingDialog(),
                          ),
                        );
                      },
                    );
                    try {
                      verifyEmail(widget.email, verifyCode!);
                    } catch (e) {}
                  },
                ),
                MyTextButton(
                    text: 'تغییر شماره همراه',
                    icon: 'return',
                    ontap: () {
                      Navigator.of(context).pop();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
