import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_color.dart';

class FontSize extends StatefulWidget{
  String name;
  FontSize({super.key,required this.name});

  @override
  State<FontSize> createState() => _FontSizeState();
}

class _FontSizeState extends State<FontSize> {
  bool seleted = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: seleted
            ? CustomColor.backGroundColor
            : Color(0xffeef1fd),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          overlayColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
          onTap: () {
            setState(() {
              seleted = !seleted;
            });
          },
          child: Center(
            child: Text(
              widget.name,
              style: TextStyle(
                fontFamily: seleted  ? 'YM' : 'YB',
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}