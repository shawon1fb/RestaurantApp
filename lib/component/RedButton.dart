import 'package:flutter/material.dart';
import 'package:restaurant_app/Constant/constant.dart';
class RedButton extends StatelessWidget {
  RedButton({@required this.text});
  final text;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: FlatButton(
        padding: EdgeInsets.all(15.0),
        color: Colors.red,
        disabledColor: Colors.red,
        onPressed: null,
        child: Align(
            alignment: Alignment.center,
            child: Text(
              '$text',
              style: KRedFlatButtonStyle,
            )),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }
}
