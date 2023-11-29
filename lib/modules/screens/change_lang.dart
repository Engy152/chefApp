import 'package:chef_app/shared/constant.dart';
import 'package:chef_app/shared/customButtomLang.dart';
import 'package:flutter/material.dart';

class ChangeLang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 700,
          color: mainColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 105.0),
            child: Column(
              children: [
                Image.asset('images/chef.png'),
                SizedBox(height: 15.0,),
                Text(
                  'Welcome to Chef App',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 70.0,),
                const Text(
                  'Please chose your language',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 105.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtomLang(lang_text: 'English',),
                    SizedBox(width: 25,),
                    CustomButtomLang(lang_text: 'العربيه',),

                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
