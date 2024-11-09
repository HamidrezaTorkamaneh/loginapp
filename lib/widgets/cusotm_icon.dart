import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  String icon;
  Color color;
  double size;

  CustomIcon(
      {super.key, required this.icon, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/${icon}_icon.svg',
      width: size,
      color: color,
    );
  }
}
