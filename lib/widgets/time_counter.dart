import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../data/data.dart';

class TimeCounter extends StatefulWidget {
  void Function() onTap;
  String input;
  bool isPhone=true;

  TimeCounter({super.key, required this.onTap, required this.input,required this.isPhone});

  @override
  State<TimeCounter> createState() => _TimeCounterState();

}

class _TimeCounterState extends State<TimeCounter> {

  bool _isTimerFinished = false;
  void resetTimer() {
    setState(() {
      _isTimerFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return _isTimerFinished
        ? InkWell(
            onTap: () {
              widget.isPhone? loginPhone(widget.input):loginEmail(widget.input);
              setState(() {
                resetTimer();
              });
            },
            child: Text(
              'ارسال مجدد',
              style: theme.textTheme.headline5?.apply(
                color: Colors.white,
                fontFamily: 'YB',
                fontSizeDelta: 2,
              ),
            ),
          )
        : getTimer();
  }

  Widget getTimer() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SlideCountdown(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        duration: Duration(minutes: 2),
        style: TextStyle(
          fontFamily: 'YB',
          fontSize: 12,
        ),
        shouldShowMinutes: (p0) {
          return true;
        },
        shouldShowSeconds: (p0) {
          return true;
        },
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        onDone: () {
          setState(() {
            _isTimerFinished = true;
          });
        },
      ),
    );
  }
}
