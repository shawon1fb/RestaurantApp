import 'package:flutter/material.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/BlueButton.dart';
import 'package:restaurant_app/component/RedButton.dart';
import 'package:restaurant_app/component/Normal_TextField.dart';
import 'package:restaurant_app/component/password_input_textField.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 15.0,
          children: <Widget>[
            new NormalTextField(
              inputType: TextInputType.text,
              hint: 'Name',
            ),

            new NormalTextField(
              inputType: TextInputType.emailAddress,
              hint: 'E-mail address',
            ),

            new PasswordTextField(
              hint: 'Password',
            ),

            new PasswordTextField(
              hint: 'Confirm Password',
            ),

            RedButton(text: 'Sign Up'),

          ],
        ),
      ),
    );
  }
}
