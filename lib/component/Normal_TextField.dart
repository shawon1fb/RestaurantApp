import 'package:flutter/material.dart';
import 'package:restaurant_app/Constant/constant.dart';

class NormalTextField extends StatelessWidget {
  NormalTextField({this.hint,@required this.inputType});
  final hint;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      style: KInputTextStyle,
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
