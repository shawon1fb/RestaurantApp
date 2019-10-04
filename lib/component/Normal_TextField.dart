import 'package:flutter/material.dart';
import 'package:restaurant_app/Constant/constant.dart';

class NormalTextField extends StatelessWidget {
  NormalTextField({
    this.hint,
    @required this.inputType,
    this.validator,
    this.OnSaved,
    this.key,
  });

  final hint;
  final TextInputType inputType;

  final Function validator;
  final Function OnSaved;
  final Key key;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      key: key,
      style: KInputTextStyle,
      validator: validator,
      onSaved: OnSaved,
      textInputAction: TextInputAction.next,
      keyboardType: inputType,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        labelText: '$hint',
        labelStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }
}
