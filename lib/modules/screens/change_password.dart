import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/shared/customAppbarText.dart';
import 'package:chef_app/shared/customButtom.dart';
import 'package:chef_app/shared/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePassword extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state)
      {
        var cubit = LoginCubit.get(context);
        return Scaffold(
          appBar: AppBar(
              title: customAppbarText(textAppbar: 'Change Password',)
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 35,),
                child: Column(
                  children: [
                    Image.asset('images/lock 1.png'),
                    SizedBox(height: 20,),
                    Text('Change Password',),
                    SizedBox(height: 30,),
                    customTextField(
                      hintText: 'old Password',
                      type: TextInputType.visiblePassword,
                      action: TextInputAction.next,
                      validate: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Password can not empty';
                        }
                        else if(value.length <7)
                        {
                          return 'password must be contain at least 7 character';
                        }
                        return null;
                      },
                      controller: cubit.ChangeOldPasswordController,
                      suffixIcon: IconButton (
                        icon: Icon(cubit.oldPass_visible?
                        Icons.visibility:Icons.visibility_off_outlined,
                        ), onPressed: ()
                      {
                        cubit.changeOldPassword();
                      },
                      ), obscureText: cubit.oldPass_visible,
                    ),

                    SizedBox(height: 30,),
                    customTextField(
                      hintText: 'New Password',
                      type: TextInputType.visiblePassword,
                      action: TextInputAction.next,
                      validate: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Password can not empty';
                        }
                        else if(value.length <7)
                        {
                          return 'password must be contain at least 7 character';
                        }
                        return null;
                      },
                      controller: cubit.ChangeNewPasswordOldController,
                      suffixIcon: IconButton (
                        icon: Icon(cubit.pass_visible?
                        Icons.visibility:Icons.visibility_off_outlined,
                        ), onPressed: ()
                      {
                        cubit.changePassword();
                      },
                      ), obscureText: cubit.pass_visible,
                    ),

                    SizedBox(height: 30,),
                    customTextField(
                      hintText: 'Confirm New Password',
                      type: TextInputType.visiblePassword,
                      action: TextInputAction.done,
                      validate: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Password can not empty';
                        }
                        else if(value.length <7)
                        {
                          return 'password must be contain at least 7 character';
                        }
                        return null;
                      },
                      controller: cubit.ChangecomfirmpasswordController,
                      suffixIcon: IconButton (
                        icon: Icon(cubit.confirmPass_visible?
                        Icons.visibility:Icons.visibility_off_outlined,
                        ), onPressed: ()
                      {
                        cubit.changeConfirmPassword();
                      },
                      ), obscureText: cubit.confirmPass_visible,
                    ),

                    SizedBox(height: 30,),

                    customButtom(
                      text: 'Reset Password',
                      function: ()
                      {
                        if(formKey.currentState!.validate())
                        {
                          print(5555);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
