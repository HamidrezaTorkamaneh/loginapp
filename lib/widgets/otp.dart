import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTP extends StatelessWidget{
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: OtpTextField(
        fieldWidth: 63,
        fieldHeight: 60,
        filled: true,
        focusedBorderColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 23,
          color: Colors.black,
          fontFamily: 'YB',
        ),

        numberOfFields: 5,
        borderRadius: BorderRadius.circular(10),
        margin: EdgeInsets.symmetric(horizontal: 5),
        fillColor: Colors.white,

        //set to true to show as box or false to show as dash
        showFieldAsBox: true,
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Verification Code"),
                  content:
                  Text('Code entered is $verificationCode'),
                );
              });
        }, // end onSubmit
      ),
    );
  }

}