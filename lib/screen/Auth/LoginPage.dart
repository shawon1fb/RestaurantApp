import 'package:flutter/material.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/BlueButton.dart';
import 'package:restaurant_app/component/RedButton.dart';
import 'package:restaurant_app/component/Normal_TextField.dart';
import 'package:restaurant_app/component/password_input_textField.dart';
import 'package:restaurant_app/screen/DashBord/dashbord.dart';
import 'package:restaurant_app/Service/Location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:toast/toast.dart';
import 'package:restaurant_app/helpers/ensure_visible.dart';

class LoginPage extends StatefulWidget  {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _EmailFocus = FocusNode();
  final FocusNode _PasswordFocus = FocusNode();
  static final TextEditingController _firstNameController = new TextEditingController();
  static final TextEditingController _lastNameController = new TextEditingController();


  final EmailKey = GlobalKey<FormState>();
  final PasswordKey = GlobalKey<FormState>();
  String _email, _password;

  void _submit() {
    if (EmailKey.currentState.validate()) {
      EmailKey.currentState.save();
      if (_email == 'abc@gmail.com' && _password == '1234') {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DashBoard(
                    /*  latitude: p.latitude,
                              longitude: p.longitude,*/ /**/
                    )));
      } else {
        Toast.show("Username or Password Incorrect.", context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
      }
    }
  }

  Future<Null> _focusNodeListener() async {
    if (_PasswordFocus.hasFocus){
      print('TextField got the focus');
    } else {
      print('TextField lost the focus');
    }

    if (_EmailFocus.hasFocus){
      print('Email got the focus');
    } else {
      print('Email lost the focus');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _PasswordFocus.addListener(_focusNodeListener);
    _EmailFocus.addListener(_focusNodeListener);
    super.initState();


  }

  @override
  void dispose() {
    // TODO: implement dispose
    _PasswordFocus.removeListener(_focusNodeListener);
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Form(
                key: EmailKey,
                child: Column(
                  children: <Widget>[
                    EnsureVisibleWhenFocused(
                      child: new NormalTextField(
                        focusNode: _EmailFocus,
                        onFieldSubmitted: (term) {
                          _EmailFocus.unfocus();
                          FocusScope.of(context).requestFocus(_PasswordFocus);
                        },
                        hint: 'E-mail',
                        inputType: TextInputType.emailAddress,
                        validator: (input) =>
                            !input.contains('@') ? 'Not a valid Email' : null,
                        OnSaved: (input) => _email = input,
                      ),
                      focusNode: _EmailFocus,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    EnsureVisibleWhenFocused(
                      child: new PasswordTextField(
                        focusNode: _PasswordFocus,
                        hint: 'Password',
                        validator: (input) => input.length < 4
                            ? 'You need at least 4 characters'
                            : null,
                        OnSaved: (input) => _password = input,
                      ),
                      focusNode: _PasswordFocus,
                    ),
                  ],
                )),
            Container(
              child: Align(
                alignment: Alignment.topRight,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: null,
                  child: Text(
                    "Forgot password?",
                    style: KFlatButtonStyle,
                  ),
                ),
              ),
            ),
            RedButton(
              text: 'Log In',
              onPress: () {
                _submit();
                print('log in pressed');
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            BlueButton(
              text: 'Login with Facebook',
              onPress: () {
                /* Location l = new Location();

                Position p = await l.getCurrentLocation();
                print(p);*/
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DashBoard(
                            /*  latitude: p.latitude,
                              longitude: p.longitude,*/ /**/
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
