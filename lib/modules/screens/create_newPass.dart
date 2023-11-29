// import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
// import 'package:chef_app/cubit/loginCubit/LoginState.dart';
// import 'package:chef_app/shared/customAppbarText.dart';
// import 'package:chef_app/shared/customButtom.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class CreatNewPass extends StatelessWidget {
//   const CreatNewPass({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<LoginCubit,LoginStates>(
//       listener: (BuildContext context, state) {  },
//       builder: (BuildContext context, Object? state)
//       {
//         var cubit = LoginCubit.get(context);
//         return Scaffold(
//           appBar: AppBar(
//             title: customAppbarText(textAppbar: 'Creat new password',)
//           ),
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 35,left: 20.0,right: 20.0),
//               child: Column(
//                 children: [
//                   Image.asset('images/lock 1.png'),
//                   SizedBox(height: 20,),
//                   Text('Create new password',),
//                   SizedBox(height: 30,),
//                   Container(
//                     height: 55,
//                     child: TextFormField(
//                       controller: cubit.passwordController,
//                       keyboardType: TextInputType.visiblePassword ,
//                       obscureText: LoginCubit.get(context).pass_visible,
//                       onFieldSubmitted: (String value){print(value);},
//                       decoration:  InputDecoration(
//                         suffixIcon: IconButton (
//                           icon: Icon(LoginCubit.get(context).pass_visible?
//                           Icons.visibility:Icons.visibility_off_outlined,
//
//                           ), onPressed: ()
//                         {
//                           LoginCubit.get(context).changePassword();
//                         },
//                         ),
//                         hintText: 'New password',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10)
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   Container(
//                     height: 55,
//                     child: TextFormField(
//                       controller: cubit.comfirmpasswordController,
//                       keyboardType: TextInputType.visiblePassword ,
//                       obscureText: LoginCubit.get(context).confirmPass_visible,
//                       onFieldSubmitted: (String value){print(value);},
//                       decoration:  InputDecoration(
//                         suffixIcon: IconButton (
//                           icon: Icon(LoginCubit.get(context).confirmPass_visible?
//                           Icons.visibility:Icons.visibility_off_outlined,
//
//                           ), onPressed: ()
//                         {
//                           LoginCubit.get(context).changeConfirmPassword();
//                         },
//                         ),
//                         hintText: 'Confirm password',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10)
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   Container(
//                     height: 55,
//                     child: TextFormField(
//                       textInputAction: TextInputAction.next,
//                       controller: cubit.emailController,
//                       decoration: InputDecoration(
//                         hintText: 'code',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10)
//                         ),
//                       ),
//                       keyboardType:TextInputType.emailAddress,
//                       onFieldSubmitted: (value){
//                       },
//                       onChanged: (value){
//                       },
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   customButtom(
//                     text: 'Reset Password',
//                     function: ()
//                     {
//
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
