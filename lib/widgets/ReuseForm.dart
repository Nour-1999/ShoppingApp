import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseForm extends StatelessWidget {
  ReuseForm({this.form});
  final Widget form;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "images/stains_dark_texture_129779_300x168.jpg"), // <-- BACKGROUND IMAGE
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 120.0,
                  color: Colors.white,
                ),
                Text(
                  "SHOP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 100.0, top: 50.0),
//                  padding: const EdgeInsets.symmetric(
//                      horizontal: 43.0, vertical: 5.0),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0)),
              color: Colors.white,
            ),
            child: form,
          ),
        ]),
      ),
    );
  }
}
