import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:chef_app/shared/customAppbarText.dart';
import 'package:chef_app/shared/customButtom.dart';
import 'package:chef_app/shared/customTextField.dart';
import 'package:chef_app/shared/stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddMeal extends StatelessWidget {
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
            title: customAppbarText(textAppbar: 'Add Meal',) ,
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
                      stackWidget(image: cubit.postImageMeal!, getimage: cubit.getPostImageMeal(),),
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
                        hintText: 'Name',
                        type: TextInputType.name,
                        controller: cubit.AddNameController,
                        action: TextInputAction.next,
                        obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Price can not empty';
                          }
                          return null;
                        },
                        hintText: 'Price',
                        type: TextInputType.number,
                        action: TextInputAction.next,
                        controller: cubit.AddPriceeController,
                        obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      customTextField(
                        validate: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Category can not empty';
                          }
                          return null;
                        },
                        hintText: 'category',
                        type: TextInputType.name,
                        action: TextInputAction.next,
                        controller: cubit.AddCategoryController,
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
                        controller: cubit.AddDescriptionController,
                        action: TextInputAction.done,
                        obscureText: false,
                      ),
                      SizedBox(height: 17,),
                      Row(children: [
                        Radio(
                            activeColor: mainColor,
                            value: 1,
                            groupValue: cubit.value1,
                            onChanged: (value)
                            {
                              cubit.changeRadioButtom(value: value!);
                            }
                        ),
                        Text('Number'),
                        SizedBox(width: 130,),
                        Radio(
                          activeColor: mainColor,
                            value: 2,
                            groupValue: cubit.value1,
                            onChanged: (value)
                            {
                              cubit.changeRadioButtom(value: value!);
                            }),
                        Text('Quantity'),
                      ],),
                      SizedBox(height: 100,),
                      customButtom(
                        text: 'Add Meal',
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
