import 'package:flutter/material.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';

class ChangeLanguage extends StatefulWidget {
  static const String id = 'ChangeLanguage';
  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  bool isSwitched = false;
 String _character="";
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).ChangeLanguage,
            style: AppBarStyle,
          ),
          backgroundColor: ColorApp,
        ),
        body: ListView(
          children:  <Widget>[

            ListTile(
              title:  Text('English'),
              leading: Radio(
                value: "English",
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                    S.load(Locale('en','US'));
                  });
                },
              ),
            ),
            ListTile(
              title:  Text('Arabic'),
              leading: Radio(
                value: "Arabic",
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                    S.load(Locale("ar","AR"));
                  });
                },
              ),
            ),

          ],
        ));
  }
}
