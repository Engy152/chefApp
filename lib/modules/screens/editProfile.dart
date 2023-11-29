import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:chef_app/shared/customAppbarText.dart';
import 'package:chef_app/shared/customButtom.dart';
import 'package:chef_app/shared/customTextField.dart';
import 'package:chef_app/shared/stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfile extends StatelessWidget {
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
            title: customAppbarText(textAppbar: 'EditProfile',) ,
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0,),
                child: Center(
                  child: Column(
                    children:
                    [
                      stackWidget(image: cubit.postImage!, getimage: cubit.getPostImage(),),
                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Name can not empty';
                          }
                          return null;
                        },
                        controller: cubit.EditNameController,
                          hintText: 'Name',
                          type: TextInputType.name,
                          action: TextInputAction.next,
                          obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Phone can not empty';
                          }
                          return null;
                        },
                        controller: cubit.EditPhoneController,
                        hintText: 'Phone',
                        type: TextInputType.phone,
                        action: TextInputAction.next,
                        obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'BrandName can not empty';
                          }
                          return null;
                        },
                        hintText: 'BrandName',
                        controller: cubit.EditBrandNameController,
                        type: TextInputType.name,
                        action: TextInputAction.next,
                        obscureText: false,
                      ),

                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Minimum Charge can not empty';
                          }
                          return null;
                        },
                        hintText: 'Minimum Charge',
                        controller: cubit.EditMinChargeController,
                        type: TextInputType.number,
                        action: TextInputAction.next,
                        obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Discription Charge can not empty';
                          }
                          return null;
                        },
                        hintText: 'Discription',
                        type: TextInputType.text,
                        action: TextInputAction.next,
                        controller: cubit.EditDiscriptionController,
                        obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Location Charge can not empty';
                          }
                          return null;
                        },
                        hintText: 'Location',
                        type: TextInputType.text,
                        controller: cubit.EditLocationController,
                        action: TextInputAction.done,
                        obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      customButtom(
                        text: 'Update',
                        function: ()
                        {
                          if(formKey.currentState!.validate())
                          {
                           print('vvvvvvvvv');
                          }

                        },
                      ),

                    ],),
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
