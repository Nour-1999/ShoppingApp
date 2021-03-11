import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterapp/Screen/ContentApp/FirstScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/AboutAppScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/MyActivitiesScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/MyCartScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/MyPurchasesScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/SettingScreen.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/flutter_app/lib/Screen/SettingScreens/ChangePassword.dart';
import 'package:flutterapp/Screen/FormScreens/LogInScreen.dart';
import 'package:flutterapp/Screen/FormScreens/SignUpForm.dart';
import 'package:flutterapp/Screen/SettingScreens/ChangeLanguage.dart';
import 'package:flutterapp/Screen/SplashScreens/SplashScreen.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          SplashScreenClass.id: (context) => SplashScreenClass(),
          LogInForm.id: (context) => LogInForm(),
          SignUpScreen.id: (context) => SignUpScreen(),
          ChangePassword.id: (context) => ChangePassword(),
          MainScreen.id: (context) => MainScreen(),
          SettingScreen.id: (context) => SettingScreen(),
          MyCartScreen.id: (context) => MyCartScreen(),
          MyPurchasesScreen.id: (context) => MyPurchasesScreen(),
          MyActivitiesScreen.id: (context) => MyActivitiesScreen(),
          AboutAppScreen.id: (context) => AboutAppScreen(),
          ChangeLanguage.id:(context)=>ChangeLanguage(),
        },
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate
        ],
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: SplashScreenClass.id);
  }
}
