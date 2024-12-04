import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget{
  void Function() ontap;
  String text;

  MyButton2({super.key,required this.text,required this.ontap});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          colors: [
            Color(0xff0fd9b2),
            Color(0xff1dc3be),
          ],
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(25),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: ontap,
          child: Center (
            child: Text(
              text,
              style: theme.textTheme.headline2,
            ),
          ),
        ),
      ),
    );
  }

}