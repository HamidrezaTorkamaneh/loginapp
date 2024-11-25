import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_color.dart';
import 'dart:math' as math;
class LoadingDialog extends StatefulWidget {
  const LoadingDialog({super.key});

  @override
  State<LoadingDialog> createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog>  with SingleTickerProviderStateMixin {

  late final AnimationController _controller =
  AnimationController(vsync: this, duration: Duration(seconds: 2))
  ..repeat();
  @override
  Widget build(BuildContext context) {
    final ThemeData theme= Theme.of(context);
    return Container(
      width: 20,
      height: 200,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),  color: Colors.white,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (_, child) {
              return Transform.rotate(
                angle: _controller.value * 2 * math.pi,
                child: child,
              );
            },
            child: CustomIcon(icon: 'loading2', color: CustomColor.greenColor, size: 30),
          ),
          SizedBox(height: 25),
          Text('درحال بررسی ...',style: theme.textTheme.bodyText1?.apply(
            color: Colors.black,
          ),)
        ],
      ),
    );
  }
}
