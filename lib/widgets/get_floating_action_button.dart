import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class GetFloatingActionButton extends StatefulWidget{
  const GetFloatingActionButton({super.key});

  @override
  State<GetFloatingActionButton> createState() => _GetFloatingActionButtonState();
}

class _GetFloatingActionButtonState extends State<GetFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    bool isFabVisible = true;
   return SizedBox(
      width: 70,
      height: 70,
      child: Visibility(
        visible: isFabVisible,
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: CustomColor.purpleColor2,
          child: Center(
            child: CustomIcon(
              icon: 'plus_square',
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}