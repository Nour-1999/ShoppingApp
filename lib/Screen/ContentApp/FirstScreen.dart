import 'package:flutter/material.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/AboutAppScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/MyActivitiesScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/MyCartScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/MyPurchasesScreen.dart';
import 'package:flutterapp/Screen/ContentDrawerItem/SettingScreen.dart';
import 'package:flutterapp/Screen/FormScreens/LogInScreen.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'MainScreen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var localization = S.of(context);
    var   navigator =   Navigator.of(context);
    final drawerHeader = DrawerHeader(
      child: Center(
          child: Column(
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 100.0,
          ),
          Text(
            'SHOP',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ],
      )),
      decoration: BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage("images/stains_dark_texture_129779_300x168.jpg"),
              fit: BoxFit.cover)),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,

        ListTile(
          title: Text(
               localization.MyCart,
            style: StyleTextWithIcon,
              ),
          leading: const Icon(Icons.shopping_cart,
            color: ColorIcons,
          ),
          onTap: () {
            navigator.pushNamed(MyCartScreen.id);
          },
        ),
        ListTile(
          title: Text(
               localization.MyPurchases,
            style: StyleTextWithIcon,
              ),
          leading: const Icon(Icons.work_sharp,
            color: ColorIcons,),
          onTap: () {
            navigator.pushNamed(MyPurchasesScreen.id);
          },
        ),
        ListTile(
          title: Text(
             localization.MyActivities,
            style: StyleTextWithIcon,
              ),
          leading: const Icon(Icons.list,
            color: ColorIcons,
          ),
          onTap: () {
            navigator.pushNamed(MyActivitiesScreen.id);
          },
        ),
        ListTile(
          title: Text(
            localization.Setting ,
            style: StyleTextWithIcon,
          ),
          leading: const Icon(Icons.settings,
            color: ColorIcons,
          ),
          onTap: () {
            navigator.pushNamed(SettingScreen.id);
          },
        ),
        ListTile(
          title: Text(
               localization.About,
            style: StyleTextWithIcon,
              ),
          leading: const Icon(Icons.announcement,
            color: ColorIcons,),
          onTap: () {
            navigator.pushNamed(AboutAppScreen.id);
          },
        ),

        ListTile(
          title: Text(
            localization.LogOut,
            style: StyleTextWithIcon,
          ),
          leading: const Icon(
            Icons.logout,
            color: ColorIcons,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(LogInForm.id);
          },
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localization.MainPage,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor:ColorApp,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(
            "",
          ),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
