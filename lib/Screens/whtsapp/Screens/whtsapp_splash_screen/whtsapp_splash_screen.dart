import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practise_app/Screens/welcome.dart';
import 'package:practise_app/Screens/whtsapp/Screens/Bottom%20Navigation%20Bar/bottom_nav_bar.dart';

class whtsappSplashScreen extends StatefulWidget {
  whtsappSplashScreen({Key? key}) : super(key: key);
  @override
  State<whtsappSplashScreen> createState() => _whtsappSplashScreenState();
}

class _whtsappSplashScreenState extends State<whtsappSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Nextscreen();
  }

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage("Assets/Images/whtsappSplashscreen.png"),
                height: 200,
                width: 200,),
            )
          ],
        )
    ));
  }
  void Nextscreen() {
    Timer(Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomNavBar()));}
    );
  }
}
