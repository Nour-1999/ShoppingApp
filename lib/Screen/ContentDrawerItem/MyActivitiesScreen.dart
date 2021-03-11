import 'package:flutter/material.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';

class MyActivitiesScreen extends StatefulWidget {
  static const String id = 'MyActivitiesScreen';
  @override
  _MyActivitiesScreenState createState() => _MyActivitiesScreenState();
}

class _MyActivitiesScreenState extends State<MyActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).MyActivities,
          style: AppBarStyle,
        ),
        backgroundColor: ColorApp,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
