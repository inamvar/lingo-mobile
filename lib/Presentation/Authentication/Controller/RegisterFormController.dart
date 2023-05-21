import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AuthenticationScreenController.dart';

class RegisterFormController extends GetxController{
  final registerFormKey = GlobalKey<FormState>();

  final authController = Get.find<AuthenticationScreenController>();

  void showLoginForm() {
    authController.showLoginForm();
  }

  void register(){
    if(isFormValid()){

    }
  }

  bool isFormValid() {
    return registerFormKey.currentState?.validate() ?? false;
  }

}