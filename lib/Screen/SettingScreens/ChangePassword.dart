
import 'package:flutter/material.dart';
import 'package:flutterapp/Screen/FormScreens/LogInScreen.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/Constants.dart';
import 'package:flutterapp/widgets/SubmitButton.dart';

class ChangePassword extends StatefulWidget {
  static const String id = 'ChangePassword';
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  final _formKey = GlobalKey<FormState>();
  FocusNode focusNode;
  String oldPassword;
  String newPassword;
  String confirmPassword;
  bool _testOldPassword = true;
  bool _testNewPassword = true;
  bool _testConfirmPassword = true;
  bool _formChanged = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).ChangePasswordLabelText),
        backgroundColor: ColorApp,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[

            Form(
              onChanged: _onFormChange,
              onWillPop: _onWillPop,
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      onSaved: (value) {
                        oldPassword = value;
                      },
                      onChanged: (value) {

                        print(value);
                      },
                      style:
                      TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),

                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).OldPassword,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _testOldPassword ? Icons.visibility_off : Icons.visibility,
                              color: ColorIcons,
                            ),
                            onPressed:()
                            {
                              setState(() {
                                _testOldPassword = !_testOldPassword;
                              });
                            },
                          ),
                          labelStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      onSaved: (value) {
                        newPassword = value;
                      },
                      onChanged: (value) {
                        // newPassword = value;
                        print(value);
                      },
                      style:
                      TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).NewPasswordLabelText,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _testNewPassword ? Icons.visibility_off : Icons.visibility,
                              color: ColorIcons,
                            ),
                            onPressed:()
                            {
                              setState(() {
                                _testNewPassword = !_testNewPassword;
                              });
                            },
                          ),
                          labelStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      onChanged: (value) {
                        if(newPassword==confirmPassword)
                        {
                          confirmPassword = value;
                        }
                        else
                        {

                              SnackBar(content: Text(S.of(context).Cancel));
                        }

                      },
                      onSaved: (value) {
                        if(newPassword==confirmPassword)
                        {
                          data.add(value);
                        }
                        else{

                              SnackBar(content: Text(S.of(context).Cancel));
                        }

                      },

                      style: TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).ConfirmPasswordLabelText,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _testConfirmPassword ? Icons.visibility_off : Icons.visibility,
                              color: ColorIcons,
                            ),
                            onPressed:()
                            {
                              setState(() {
                                _testConfirmPassword = !_testConfirmPassword;
                              });
                            },
                          ),
                          labelStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SubmitButton(
                      title: S.of(context).ChangePasswordLabelText,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();

                          Navigator.of(context).pushNamed( LogInForm.id);
                          // _formKey.currentState.reset();
//
                        };
                      },
                      colour: ColorApp,
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
