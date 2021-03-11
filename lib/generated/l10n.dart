// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign in`
  String get buttonTitleSignIn {
    return Intl.message(
      'Sign in',
      name: 'buttonTitleSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get buttonTitleSignUp {
    return Intl.message(
      'Sign up',
      name: 'buttonTitleSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get AppBarLogInScreen {
    return Intl.message(
      'Log In',
      name: 'AppBarLogInScreen',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get AppBarSignUpScreen {
    return Intl.message(
      'Sign up',
      name: 'AppBarSignUpScreen',
      desc: '',
      args: [],
    );
  }

  /// `Code Screen`
  String get AppBarCodeScreen {
    return Intl.message(
      'Code Screen',
      name: 'AppBarCodeScreen',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailLabelText {
    return Intl.message(
      'Email Address',
      name: 'emailLabelText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get PasswordLabelText {
    return Intl.message(
      'Password',
      name: 'PasswordLabelText',
      desc: '',
      args: [],
    );
  }

  /// `Processing Data`
  String get SnackBarLogInScreen {
    return Intl.message(
      'Processing Data',
      name: 'SnackBarLogInScreen',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get SubmitScreen {
    return Intl.message(
      'Submit',
      name: 'SubmitScreen',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get ForgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'ForgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumberLabel {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumberLabel',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get NewPasswordLabelText {
    return Intl.message(
      'New Password',
      name: 'NewPasswordLabelText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get ConfirmPasswordLabelText {
    return Intl.message(
      'Confirm Password',
      name: 'ConfirmPasswordLabelText',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get ChangePasswordLabelText {
    return Intl.message(
      'Change Password',
      name: 'ChangePasswordLabelText',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `Abandon`
  String get Abandon {
    return Intl.message(
      'Abandon',
      name: 'Abandon',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to abandon the form? Any changes will be lost.`
  String get AlertDialogContent {
    return Intl.message(
      'Are you sure you want to abandon the form? Any changes will be lost.',
      name: 'AlertDialogContent',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get LogOut {
    return Intl.message(
      'Log out',
      name: 'LogOut',
      desc: '',
      args: [],
    );
  }

  /// `Main Page`
  String get MainPage {
    return Intl.message(
      'Main Page',
      name: 'MainPage',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Setting {
    return Intl.message(
      'Settings',
      name: 'Setting',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get MyCart {
    return Intl.message(
      'My Cart',
      name: 'MyCart',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get About {
    return Intl.message(
      'About',
      name: 'About',
      desc: '',
      args: [],
    );
  }

  /// `My Purchases`
  String get MyPurchases {
    return Intl.message(
      'My Purchases',
      name: 'MyPurchases',
      desc: '',
      args: [],
    );
  }

  /// `My Activities`
  String get MyActivities {
    return Intl.message(
      'My Activities',
      name: 'MyActivities',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get ChangeLanguage {
    return Intl.message(
      'Change Language',
      name: 'ChangeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get OldPassword {
    return Intl.message(
      'Old Password',
      name: 'OldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get DoNotHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'DoNotHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Have an account?`
  String get HaveAnAccount {
    return Intl.message(
      'Have an account?',
      name: 'HaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Store`
  String get FlutterStore {
    return Intl.message(
      'Flutter Store',
      name: 'FlutterStore',
      desc: '',
      args: [],
    );
  }

  /// `share this app`
  String get ShareThisApp {
    return Intl.message(
      'share this app',
      name: 'ShareThisApp',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get Version {
    return Intl.message(
      'Version',
      name: 'Version',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}