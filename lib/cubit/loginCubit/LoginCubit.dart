
import 'dart:io';

import 'package:chef_app/cubit/loginCubit/LoginState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() :super(AppInitialStates());

  static LoginCubit get(context) => BlocProvider.of(context);
 /////// LOGIN/////
  var LoginemailController = TextEditingController();
  var LoginpasswordController = TextEditingController();
  //////FORGET///////
  var ForgetemailController = TextEditingController();
  /////////EDIT PROFILE////////
  var EditNameController = TextEditingController();
  var EditPhoneController = TextEditingController();
  var EditBrandNameController = TextEditingController();
  var EditMinChargeController = TextEditingController();
  var EditDiscriptionController = TextEditingController();
  var EditLocationController = TextEditingController();

  ////////////////// Change Pass///////////
  var ChangeNewPasswordOldController = TextEditingController();
  var ChangeOldPasswordController = TextEditingController();
  var ChangecomfirmpasswordController = TextEditingController();
  //////////////Add Meal //////////
  var AddNameController = TextEditingController();
  var AddPriceeController = TextEditingController();
  var AddCategoryController = TextEditingController();
  var AddDescriptionController = TextEditingController();

  bool switchValue = true;

  bool pass_visible = true;
  bool confirmPass_visible = true;
  bool oldPass_visible = true;

  void changePassword()
  {
    pass_visible = !pass_visible;
    emit(LoginChangPasswordInitialStates());
  }

  void changeConfirmPassword()
  {

    confirmPass_visible = !confirmPass_visible;
    emit(LoginChangConfirmPasswordInitialStates());
  }

  void changeOldPassword()
  {
    oldPass_visible = !oldPass_visible;
    emit(LoginChangOldPasswordInitialStates());
  }
//////profile ///
  File? postImage;
  var picker = ImagePicker();
  Future<void> getPostImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      postImage = File(pickedFile.path);
      emit(PostImagePickedSuccessState());
    } else {
      print('No image selected.');
      emit(PostImagePickedErrorState());
    }
  }


  ////Add meal photo////
  File? postImageMeal;
  var pickerMeal = ImagePicker();
  Future<void> getPostImageMeal() async {
    final pickedFileMeal = await pickerMeal.pickImage(source: ImageSource.gallery);

    if (pickedFileMeal != null) {
      postImageMeal = File(pickedFileMeal.path);
      emit(PostImagePickedMealSuccessState());
    } else {
      print('No image selected.');
      emit(PostImagePickedMealErrorState());
    }
  }


  void SwitchLang(value)
  {
    switchValue = value;
    emit(SwitchLangStates());
  }

  int value1 = 0;
  void changeRadioButtom({required int value} ){
    value1 =value;
    emit(RadioButtomState());
  }

  int currentIndex = 0;
  void navigationBar (index)
  {
    currentIndex = index;
    emit(NavigationState());
  }

}