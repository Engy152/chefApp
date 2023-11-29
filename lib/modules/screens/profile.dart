import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/modules/screens/change_password.dart';
import 'package:chef_app/modules/screens/create_newPass.dart';
import 'package:chef_app/modules/screens/editProfile.dart';
import 'package:chef_app/modules/screens/setting_screen.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:chef_app/shared/simpleMethod.dart';
import 'package:chef_app/shared/stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state)
      {

        var cubit = LoginCubit.get(context);
        return Scaffold(

          body: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top:50,left: 13.0),
                child: Column(
                  children:
                  [
                    stackWidget(image: cubit.postImage!, getimage: cubit.getPostImage(),),
                    SizedBox(height: 15.0,),
                    Text(
                        'Ammar Ahmad',
                      style: TextStyle(
                          fontSize: 23,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'ammar@gmail.com',
                    style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(height: 30,),
                    Row(children: [
                      Icon(Icons.perm_identity),
                      TextButton(
                          onPressed: ()
                          {
                            navigateTo(context, EditProfile());
                          },
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(fontSize: 13,color: Colors.black),
                          ),),

                    ],),
                    Row(children: [
                      Icon(Icons.visibility_off_outlined),
                      TextButton(
                        onPressed: ()
                        {
                          navigateTo(context, ChangePassword());
                        },
                        child: Text(
                          'password',
                          style: TextStyle(fontSize: 13,color: Colors.black),
                        ),),

                    ],),
                    Row(children: [
                      Icon(Icons.settings),
                      TextButton(
                        onPressed: ()
                        {
                          navigateTo(context, SettingScreen());
                        },
                        child: Text(
                          'Setting',
                          style: TextStyle(fontSize: 13,color: Colors.black),
                        ),),

                    ],),
                    Row(children: [
                      Icon(Icons.logout,color: Colors.redAccent,),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          'Log out',
                          style: TextStyle(fontSize: 13,color: Colors.redAccent,),
                        ),),

                    ],),

                  ],),
              ),
            ),
          ),
        );
      },
    );
  }
}


