import 'package:flutter/material.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';

class MyPurchasesScreen extends StatefulWidget {
  static const String id = 'MyPurchasesScreen';
  @override
  _MyPurchasesScreenState createState() => _MyPurchasesScreenState();
}

class _MyPurchasesScreenState extends State<MyPurchasesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).MyPurchases,
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
