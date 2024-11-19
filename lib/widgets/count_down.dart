import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class AddTimer extends StatelessWidget {
  const AddTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SlideCountdown(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        duration: Duration(minutes: 2),
        style: TextStyle(
          fontFamily: 'YB',
          fontSize: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
