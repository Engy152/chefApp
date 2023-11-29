import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:chef_app/shared/customAppbarText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state)
      {
        return Scaffold(
          appBar: AppBar(
            title: customAppbarText(textAppbar: 'Setting',),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Row(
              children: [
                Text(
                  'العربيه',
                  style: TextStyle(fontSize: 25),

                ),
                Spacer(),
                CupertinoSwitch(
                  activeColor: mainColor,
                  value: LoginCubit.get(context).switchValue ,
                  onChanged: (value)
                  {
                     LoginCubit.get(context).SwitchLang(value);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
