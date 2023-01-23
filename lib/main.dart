import 'package:flutter/material.dart';
import 'package:practise_app/Screens/whtsapp/Screens/Bottom%20Navigation%20Bar/bottom_nav_bar.dart';
import 'package:practise_app/Screens/whtsapp/Screens/Tab%20Bar/whtsapp_tabBar_screen.dart';
import 'package:practise_app/Screens/forgot_passwords.dart';
import 'package:practise_app/Screens/splash_screen.dart';
import 'package:practise_app/Screens/welcome.dart';

import 'Screens/whtsapp/Screens/whtsapp_splash_screen/whtsapp_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: whtsappSplashScreen(),
    );
  }
}

