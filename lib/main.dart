import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/modules/screens/HomePage.dart';
import 'package:chef_app/modules/screens/addMeal.dart';
import 'package:chef_app/modules/screens/change_lang.dart';
import 'package:chef_app/modules/screens/create_newPass.dart';
import 'package:chef_app/modules/screens/editProfile.dart';
import 'package:chef_app/modules/screens/forget_password.dart';
import 'package:chef_app/modules/screens/login.dart';
import 'package:chef_app/modules/screens/profile.dart';
import 'package:chef_app/modules/screens/setting_screen.dart';
import 'package:chef_app/modules/screens/splash_screen.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: mainColor,
            iconTheme: IconThemeData(color: Colors.white),
          ),
         bottomNavigationBarTheme: BottomNavigationBarThemeData(
           selectedItemColor: mainColor,
         ),
          colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
         useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
