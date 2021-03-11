import 'package:flutter/material.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/flutter_app/lib/Screen/FormScreens/LogInScreen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenClass extends StatefulWidget {
  static const String id = 'SplashScreen';

  @override
  _SplashScreenClassState createState() => new _SplashScreenClassState();
}

class _SplashScreenClassState extends State<SplashScreenClass> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  SplashScreen(
        seconds: 2,
        navigateAfterSeconds:  LogInForm(),
        title:  Text(
          ' Welcome ',
          style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),

        backgroundColor: Colors.white38,
      //  loaderColor: Colors.red,
      ),
    );
  }
}

