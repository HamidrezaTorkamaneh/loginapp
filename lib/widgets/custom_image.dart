import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  String image;
  double size;

  CustomImage({super.key, required this.image, required this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$image.png',
      width: size,

    );
  }
}
