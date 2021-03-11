import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterapp/Model/DatabaseServce.dart';
import 'package:flutterapp/Model/User.dart';
import 'package:flutterapp/Screen/FormScreens/LogInScreen.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';
import 'package:flutterapp/widgets/ReuseForm.dart';
import 'package:flutterapp/widgets/SubmitButton.dart';
import 'package:regexpattern/regexpattern.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'SignUpScreen';

  @override
  SignUpScreenState createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  FocusNode focusNode;
  String userName;
  String password;
  String confirmPassword;
  bool _formChanged = false;
  DatabaseService dbService = DatabaseService();

  void _createUser() async {
    final user = UserModel.fromMap({
      "userName": userName,
      "password": password,
    });
    final int id = await dbService.insertUser(user);
    print("id $id");
  }

  Future<UserModel> _checkIfUserExist(String userName) async {
    final UserModel user = await dbService.getUser(userName);
  //  print("user$user");
    return user;
//    if (user != null) {
//      print("user" + user.userName);
//
//      return true;
//
//    }
//    print("end ");
//    return false;

  }

  List data = [];
  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  Future<bool> _onWillPop() {
    if (!_formChanged) return Future<bool>.value(true);
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
              content: Text(
                S.of(context).AlertDialogContent,
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text(S.of(context).Cancel),
                  onPressed: () => Navigator.of(context).pop(false),
                  textColor: Colors.black,
                ),
                FlatButton(
                  child: Text(S.of(context).Abandon),
                  textColor: Colors.red,
                  onPressed: () => Navigator.pop(context, true),
                ),
              ],
            ) ??
            false;
      },
    );
  }

  void _onFormChange() {
    if (_formChanged) return;
    setState(() {
      _formChanged = true;
    });
  }

  String validatePassword(String value) {
    /// Password (Hard) Regex
    /// Allowing all character except 'whitespace'
    /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
    /// Minimum character: 8
    // bool isHardPassword = value.isPasswordHard();
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
//      if (!isHardPassword)
//        return 'Enter a hard password';
      if (value.length < 7)
        return "Password should be minimum 7 characters";
      else
        return null;
    }
  }
  String handle(UserModel user)
  {

    if(user!=null)
      {
        print("user.userName"+ user.userName);
        print("inside if");
      return 'Already is exist';
      }
    else{
      print("inside else");
      return null;
    }
  }
  Widget _buildUserName(BuildContext context)  {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        initialValue: ' ',
        autofocus: true,
        keyboardType: TextInputType.name,
        validator: (value) {
          String msg="";
          if (value.isEmpty) {
            msg = 'Please enter some text';
          }
          else {
            Future<UserModel> user = _checkIfUserExist(value);

            if(user!=null)
              {

              }
              user.then((value) {
                print("user$value");
              msg ="Already exist";

            });

          }
          if(msg.isEmpty)
            {
              return null;
            }
          return msg;
         // return null;
        },
        style: TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),
        onChanged: (value) {
          // userName = value;
          print("value$value");
        },
        onSaved: (value) {
          userName = value;
        },
        decoration: InputDecoration(
            labelText: S.of(context).emailLabelText,
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.person,
              color: ColorIcons,
            ),
            labelStyle: TextStyle(fontSize: 15)),
      ),
    );
  }

  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: true,
        onChanged: (value) {
          print("onChanged $value");
        },
        onSaved: (value) {
          password = value;
        },
        style: TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),
        decoration: InputDecoration(
            labelText: S.of(context).PasswordLabelText,
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: ColorIcons,
            ),
            labelStyle: TextStyle(fontSize: 15)),
        validator: (value) {
          return validatePassword(value);
        },
        controller: _password,
      ),
    );
  }

  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: true,
        onChanged: (value) {
          print(value);
        },
        style: TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),
        decoration: InputDecoration(
            labelText: S.of(context).ConfirmPasswordLabelText,
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: ColorIcons,
            ),
            labelStyle: TextStyle(fontSize: 15)),
        validator: (value) {
          if (value != _password.text) {
            return "the password isn't matching";
          } else
            return null;
        },
      ),
    );
  }

  Widget _buildSubmit(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SubmitButton(
        title: S.of(context).SubmitScreen,
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            _createUser();
            print("userName$userName");
            print("password$password");
            Navigator.of(context).pushNamed(LogInForm.id);
            // _formKey.currentState.reset();

              SnackBar(
                content: Text(S.of(context).PasswordLabelText),

            );
          };
        },
        colour: ColorApp,
      ),
    );
  }

  Widget _buildSignIn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Center(
        child: InkWell(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: S.of(context).HaveAnAccount,
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    color: Colors.black,
                    fontSize: 15,
                  )),
              TextSpan(
                  text: S.of(context).buttonTitleSignIn,
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    color: Colors.blueAccent,
                    fontSize: 15,
                  ))
            ]),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(LogInForm.id);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ReuseForm(
          form: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Form(
                onChanged: _onFormChange,
                onWillPop: _onWillPop,
                key: _formKey,
                child: Column(
                  children: [
                    _buildUserName(context),
                    _buildPassword(context),
                    _buildConfirmPassword(context),
                    _buildSubmit(context),
                    _buildSignIn(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
