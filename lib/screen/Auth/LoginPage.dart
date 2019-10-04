import 'package:flutter/material.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/BlueButton.dart';
import 'package:restaurant_app/component/RedButton.dart';
import 'package:restaurant_app/component/Normal_TextField.dart';
import 'package:restaurant_app/component/password_input_textField.dart';
import 'package:restaurant_app/screen/DashBord/dashbord.dart';
import 'package:restaurant_app/Service/Location.dart';
import 'package:geolocator/geolocator.dart';

class LoginPage extends StatelessWidget {
  final EmailKey = GlobalKey<FormState>();
  final PasswordKey = GlobalKey<FormState>();
  String _email, _password;

  void _submit() {
    if (EmailKey.currentState.validate()) {
      EmailKey.currentState.save();
      print(_email);
    }
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

                TextFormField(),
              /*  new NormalTextField(
                  hint: 'E-mail',
                  inputType: TextInputType.emailAddress,
                  validator: (input) =>
                      !input.contains('@') ? 'Not a valid Email' : null,
                  OnSaved: (input) => _email = input,
                ),
                SizedBox(
                  height: 15.0,
                ),
                new PasswordTextField(
                  hint: 'Password',
                  validator: (input) => input.length < 4
                      ? 'You need at least 4 characters'
                      : null,
                  OnSaved: (input) => _password = input,
                ),*/
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
