import 'package:flutter/material.dart';
import 'package:loginapp/screens/signup_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loginapp/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontFamily: 'EB',
            fontSize: 20,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontFamily: 'EM',
            fontSize: 14,
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            fontFamily: 'EEB',
            fontSize: 16,
            color: Colors.white,
          ),
          headline1: TextStyle(
            fontSize: 16,
            fontFamily: 'EM',
            color: Colors.black54,
          )
        ),
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
      ],
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
