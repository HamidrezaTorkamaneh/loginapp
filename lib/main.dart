import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loginapp/data/enter_code.dart';
import 'package:loginapp/screens/enter_code/number_code_screen.dart';
import 'package:loginapp/screens/login_screens/login_by_email_screen.dart';
import 'package:loginapp/screens/login_screens/login_by_number_screen.dart';
import 'package:loginapp/screens/login_screens/login_screen.dart';
import 'package:loginapp/screens/splash_screen.dart';

void main() {
  // await Hive.initFlutter();
  // var box= await Hive.openBox('names');
  // Hive.registerAdapter(EnterCodeAdapter());
  // await Hive.openBox<EnterCode>('enterCodeBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    return MaterialApp(
      theme: ThemeData(
        textTheme:const  TextTheme(
          subtitle1: TextStyle(
            fontFamily: 'YB',
            fontSize: 20,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontFamily: 'YM',
            fontSize: 14,
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            fontFamily: 'YB',
            fontSize: 16,
            color: Colors.white,
          ),
          headline1: TextStyle(
            fontSize: 16,
            fontFamily: 'YM',
            color: Colors.black54,
          ),
            headline2: TextStyle(
              fontSize: 16,
              fontFamily: 'YM',
              color: Colors.white,
            ),
          headline3: TextStyle(
            fontSize: 10,
            fontFamily: 'YM',
            color: Colors.black,
          ),
          headline4: TextStyle(
            fontSize: 14,
            fontFamily: 'YM',
            color: Colors.black,
          ),
          headline5: TextStyle(
            fontFamily: 'YM',
            fontSize: 10,
            color: Colors.white,
          ),
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
      home:SplashScreen(),
    );
  }
}
