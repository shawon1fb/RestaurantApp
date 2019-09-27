import 'package:flutter/material.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/BlueButton.dart';
import 'package:restaurant_app/component/RedButton.dart';
import 'package:restaurant_app/component/Normal_TextField.dart';
import 'package:restaurant_app/component/password_input_textField.dart';
import 'package:restaurant_app/screen/DashBord/dashbord.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new NormalTextField(
            hint: 'E-mail',
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 15.0,
          ),
          new PasswordTextField(
            hint: 'Password',
          ),
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
          ),
          SizedBox(
            height: 10.0,
          ),
          BlueButton(
            text: 'Login with Facebook',
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashBoard()));
            },
          ),
        ],
      ),
    );
  }
}
