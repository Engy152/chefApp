import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/modules/screens/addMeal.dart';
import 'package:chef_app/modules/screens/menu.dart';
import 'package:chef_app/modules/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {

  List<Widget> screens =
  [
    ProfileScreen(),
    MenueScreen()



  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, LoginStates state) {  },
      builder: (BuildContext context, LoginStates state)
      {
        return Scaffold(
          body: screens[LoginCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: LoginCubit.get(context).currentIndex,
              onTap: (index)
              {
                LoginCubit.get(context).navigationBar(index);
              },
              items:[

                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: 'Menu',
                ),
              ]
          ),
        );
      },

    );
  }
}
