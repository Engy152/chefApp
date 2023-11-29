import 'package:flutter/material.dart';

class customAppbarText extends StatelessWidget {
  const customAppbarText({Key? key, required this.textAppbar}) : super(key: key);
  final String textAppbar;
  @override
  Widget build(BuildContext context) {
    return  Text(
        '$textAppbar',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),

      );

  }
}
