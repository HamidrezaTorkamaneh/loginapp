
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class PinCode extends StatefulWidget{
  const PinCode({super.key});

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PinCodeTextField(
        // focusNode: codeFocusNode,
        appContext: context,
        backgroundColor: Colors.transparent,
        textStyle: TextStyle(
          fontSize: 23,
          color: Colors.black,
          fontFamily: 'YB',
        ),
        // pastedTextStyle: TextStyle(
        //   color: Colors.red,
        //   fontWeight: FontWeight.bold,
        // ),
        length: 5,
        blinkWhenObscuring: true,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15),
          fieldHeight: 60,
          fieldWidth: 60,
          // errorBorderColor: Colors.white,
          selectedFillColor: Colors.white,
          // inactiveColor: Colors.black,
          activeBorderWidth: 0,
          inactiveBorderWidth: 0,
          selectedBorderWidth: 0,
          activeFillColor: Colors.white,
          inactiveFillColor:Colors.white,
          // selectedColor: Colors.white,
          // activeColor: Colors.red,
          // disabledColor: Colors.white,
        ),
        cursorColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        // controller: codeController,
        keyboardType: TextInputType.number,
        // onChanged: (v) {
        //   setState(() {});
        //   if (errorText.isFill()) {
        //     validate();
        //   }
        // },
        // onCompleted: (v) {
        //   _submit();
        // },
      ),
    );
  }
}