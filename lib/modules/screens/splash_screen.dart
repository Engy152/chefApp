import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chef_app/modules/screens/change_lang.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mediaQueryh = MediaQuery.of(context).size.height;
    final mediaQueryw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: mainColor,
        duration: 3000,
        splashTransition: SplashTransition.rotationTransition,
        splash:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    //width: mediaQueryw*.1,
                    width: 55,
                    height: mediaQueryh*.07,
                    child: Image.asset(
                      'images/chef.png',
                    fit: BoxFit.cover,
                    ),
                  ),
                ),

                Text(
                  'Chef App',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),

            // Expanded(
            //   child: Text(
            //     'Chef App',
            //     style: TextStyle(
            //       fontSize: 40,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),

         nextScreen: ChangeLang() ,
      ),
    );
  }
}
