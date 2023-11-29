import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/modules/screens/HomePage.dart';
import 'package:chef_app/modules/screens/forget_password.dart';
import 'package:chef_app/modules/screens/profile.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:chef_app/shared/customButtom.dart';
import 'package:chef_app/shared/customTextField.dart';
import 'package:chef_app/shared/simpleMethod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var cubit = LoginCubit.get(context);
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, LoginStates state) {  },
      builder: (BuildContext context, LoginStates state)
      {
        return Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: mainColor,
                    child: Center(
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  customTextField(
                      hintText: 'Email',
                      type: TextInputType.emailAddress,
                    validate: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'Email can not empty';
                      }
                      else if(!value.contains('.com'))
                      {
                        return 'please enter a valid email address';
                      }
                      return null;
                    },
                    controller: cubit.LoginemailController,
                    action: TextInputAction.next, obscureText: false,
                  ),
                  SizedBox(height: 40,),
                  customTextField(
                      hintText: 'Password',
                      type: TextInputType.visiblePassword,
                      action: TextInputAction.send,
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
                    controller: cubit.LoginpasswordController,
                    suffixIcon: IconButton (
                      icon: Icon(cubit.pass_visible?
                      Icons.visibility:Icons.visibility_off_outlined,
                      ), onPressed: ()
                    {
                      cubit.changePassword();
                    },
                    ), obscureText: cubit.pass_visible,
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        navigateTo(context, ForgetPassword());
                      },
                        child: Text('Forget Password?'),),
                  ),
                  SizedBox(height: 100,),
                  Center(
                    child: customButtom(text: 'Sign in',
                      function: () {
                        if(formKey.currentState!.validate())
                        {
                          print('444444444');
                          navigateAndFinish(context, HomePage());

                        }
                      },),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                           'Don\'t have an account?',style: TextStyle(
                        fontSize: 12.0,color: Colors.black
                      ),
                          ),
                      GestureDetector(
                        onTap: ()
                        {

                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
                        },
                        child:
                        Text('Sign up',style: TextStyle(fontSize: 12.0,color: mainColor),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
