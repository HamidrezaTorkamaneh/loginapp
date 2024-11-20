// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
//
// class PinCode extends StatefulWidget{
//   const PinCode({super.key});
//
//   @override
//   State<PinCode> createState() => _PinCodeState();
// }
//
// class _PinCodeState extends State<PinCode> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 22),
//       child: PinCodeTextField(
//         focusNode: codeFocusNode,
//         appContext: context,
//         backgroundColor: Colors.transparent,
//         pastedTextStyle: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//         length: 5,
//         blinkWhenObscuring: true,
//         animationType: AnimationType.fade,
//         pinTheme: PinTheme(
//           shape: PinCodeFieldShape.box,
//           borderRadius: BorderRadius.circular(15),
//           fieldHeight: 55,
//           fieldWidth: 55,
//           errorBorderColor: COLOR_BACKGROUND,
//           selectedFillColor: COLOR_BACKGROUND,
//           inactiveColor: COLOR_BACKGROUND,
//           activeBorderWidth: 0,
//           inactiveBorderWidth: 0,
//           selectedBorderWidth: 0,
//           activeFillColor: COLOR_BACKGROUND,
//           inactiveFillColor: COLOR_BACKGROUND,
//           selectedColor: COLOR_BACKGROUND,
//           activeColor: COLOR_BACKGROUND,
//           disabledColor: COLOR_BACKGROUND,
//         ),
//         cursorColor: COLOR_PRIMARY,
//         animationDuration: const Duration(milliseconds: 300),
//         enableActiveFill: true,
//         controller: codeController,
//         keyboardType: TextInputType.number,
//         onChanged: (v) {
//           setState(() {});
//           if (errorText.isFill()) {
//             validate();
//           }
//         },
//         onCompleted: (v) {
//           _submit();
//         },
//       )
//     );
//   }
// }