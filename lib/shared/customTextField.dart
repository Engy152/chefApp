import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField({
    Key? key,
    this.validate,
    required this.controller,
    required this.hintText,
    required this.type,
    this.onChange,
    this.onsubmmited,
    required this.action,
    this.suffixIcon,
    required this.obscureText,
  }) : super(key: key);

  final String? Function(String?)? validate;
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText ;
  final TextInputType type;
  final TextInputAction action;
  final Function(String?)? onChange;
  final Function(String?)? onsubmmited;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 15.0,left: 15.0),
      child: Container(
        height: mediaQuery*.085,
        child: TextFormField(
          validator: validate,
          textInputAction: action,
          controller: controller,
          decoration: InputDecoration(
           // focusColor: Colors.yellow,
            hintText: hintText,
            suffixIcon: suffixIcon,
            //////

            // border: OutlineInputBorder(
            //    // borderSide: BorderSide(color: Colors.yellow),
            //     borderRadius: BorderRadius.circular(10 )
            // ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10 )
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10 )
            ),

            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10 )
            ),
          ),
          keyboardType:type,

          obscureText:obscureText ,
          onFieldSubmitted: onsubmmited,
          onChanged: onChange,
        ),
      ),
    );
  }
}
