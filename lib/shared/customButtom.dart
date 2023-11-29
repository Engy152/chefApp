import 'package:chef_app/shared/constant.dart';
import 'package:flutter/material.dart';

class customButtom extends StatelessWidget {
  const customButtom({Key? key, required this.text, required this.function}) : super(key: key);
  final String text;
  final Function()? function;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 320,
        height: 40,
        color: mainColor,
        child:
        Text(
          '$text',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),
        ),
        shape: OutlineInputBorder(

          borderRadius: BorderRadius.circular(10)
        ),
        onPressed: function,
        );
  }
}
