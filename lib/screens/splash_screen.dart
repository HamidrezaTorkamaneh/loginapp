import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/screens/signup_screens/signup_screen.dart';
import 'package:loginapp/widgets/cusotm_icon.dart';
import 'package:loginapp/widgets/custom_image.dart';
import 'dart:math' as math;


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat();

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignupScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/effect1.png'),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff7f4cff),
              Color(0xff6a78eb),
              Color(0xff3ddac3),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Column(
              children: [
                CustomImage(image: 'davazdah_lego', size: 180),
                const SizedBox(height: 15),
                CustomImage(image: 'davazdah_text', size: 180),
                const SizedBox(height: 120),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (_, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: CustomIcon(
                    icon: 'loading',
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
