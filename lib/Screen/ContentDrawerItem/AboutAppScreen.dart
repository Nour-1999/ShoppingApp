import 'package:flutter/material.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';

class AboutAppScreen extends StatefulWidget {
  static const String id = 'AboutAppScreen';

  @override
  _AboutAppScreenState createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).About,
          style: AppBarStyle,
        ),
        backgroundColor: ColorApp,
      ),
      body:  ListView(
        children:  <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            ListTile(
              leading:FlutterLogo(size: 40.0),
              title: Text(
                S.of(context).FlutterStore,
                style: StyleTextWithIcon,
              ),

            ),
             ListTile(
              leading: Icon(Icons.announcement,
                color: ColorIcons,
              ),
              title: Text( S.of(context).Version,
                  style: StyleTextWithIcon,

              ),
              subtitle: Text('1.0'),

            ),
            ListTile(
              leading:Icon(Icons.share,  color: ColorIcons,),
              title: Text(
                S.of(context).ShareThisApp,
                style: StyleTextWithIcon,
              ),
              onTap: ()
              {
                setState(() {
                //share this app
                });
              },
            ),
        ],
      ),
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 10.0),
                  child: Text("Author",
                    style: StyleTextWithIcon,
                  ),
                ),
                ListTile(
                  leading:Icon(Icons.person,
                    color: ColorIcons,
                  ) ,
                  title: Text('Author Name'),
                  subtitle: Text('Syria'),

                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}
