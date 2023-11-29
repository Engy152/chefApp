import 'package:chef_app/modules/screens/login.dart';
import 'package:chef_app/shared/simpleMethod.dart';
import 'package:flutter/material.dart';

class CustomButtomLang extends StatelessWidget {
  const CustomButtomLang({Key? key, required this.lang_text}) : super(key: key);
  final String lang_text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 120,
        color: Colors.black,
        child:
        Text(
          '$lang_text',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15),),
        height: 40,

        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),),
        onPressed: ()
        {
          navigateTo(context, Login());
        }
    );
  }
}
