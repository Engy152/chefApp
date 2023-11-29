import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/shared/customAppbarText.dart';
import 'package:chef_app/shared/customButtom.dart';
import 'package:chef_app/shared/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = LoginCubit.get(context);
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state)
      {
        return Scaffold(
          appBar: AppBar(
            title: customAppbarText(textAppbar: 'Forget Password',),

          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 35,),
              child: Column(
                children: [
                  Image.asset('images/lock 1.png'),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Text('Enter your mail and we will send you code to',),
                      Text('to reset your password',),
                    ],
                  ),
                  SizedBox(height: 30,),
                  customTextField(
                    hintText: 'Email',
                    type: TextInputType.emailAddress,
                    controller: cubit.ForgetemailController,
                    action: TextInputAction.done, obscureText: false,
                  ),
                  SizedBox(height: 30,),
                  customButtom(
                    text: 'Send Code',
                    function: ()
                    {

                    },
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
