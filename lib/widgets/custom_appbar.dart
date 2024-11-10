import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


PreferredSize appBar({
  List<Widget> actions = const [],
  String? title,
  Widget? leading,
  Color titleColor = Colors.black,
  double titleSize = 16,
  bool centerTitle = false,
  PreferredSizeWidget? bottom,
  SystemUiOverlayStyle? systemUiOverlayStyle,
  Color? color,
}) {
  // color = color ?? App.theme.colorBackground();
  return PreferredSize(
    preferredSize: Size(double.infinity, 60),
    child: CustomAppBar(
      leading: leading,
      title: title,
      titleSize: titleSize,
      actions: actions,
      titleColor: titleColor,
      color: color,
      centerTitle: centerTitle,
      systemUiOverlayStyle: systemUiOverlayStyle,
    ),
  );
}

class CustomAppBar extends StatelessWidget {
  List<Widget> actions;
  String? title;
  Widget? leading;
  double titleSize;
  Color? titleColor;
  Color? color;
  bool centerTitle;
  double horizontalPadding;
  SystemUiOverlayStyle? systemUiOverlayStyle;

  CustomAppBar({
    super.key,
    this.actions = const [],
    this.title,
    this.leading,
    this.color,
    this.titleColor,
    this.titleSize = 18,
    this.centerTitle = false,
    this.horizontalPadding = 15,
    this.systemUiOverlayStyle,
  }) {
    if (color == null) {

    }
    titleColor = Colors.black;
  }

  getSystemUiOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        // statusBarColor: CustomColor.backGroundScreenColor,
        // systemNavigationBarColor: CustomColor.backGroundScreenColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: AppBar(
        centerTitle: centerTitle,
        title: title != null ? Text(title!) : null,
        titleTextStyle: TextStyle(
          fontSize: titleSize,
          color: titleColor,
          fontFamily: "YB",
        ),
        elevation: 0,
        titleSpacing: 3,
        leadingWidth: 56,
        systemOverlayStyle: systemUiOverlayStyle ?? getSystemUiOverlayStyle(),
        leading: leading,
        actions: actions,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
    );
  }
}
