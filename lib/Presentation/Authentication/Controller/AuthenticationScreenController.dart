import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/AuthPageTypes.dart';
import 'package:lingo/Presentation/Authentication/Controller/LoginFormController.dart';
import 'package:lingo/Presentation/Authentication/Controller/RegisterFormController.dart';
import '../../../Core/Interfaces/UseCases/ISignInUseCase.dart';

class AuthenticationScreenController extends GetxController {
  var pageType = AuthPageTypes.LOGIN.obs;

  var isLoading = false.obs;

  AuthenticationScreenController();

  void showRegisterForm() {
    pageType.value = AuthPageTypes.REGISTER;
  }

  void showLoginForm() {
    pageType.value = AuthPageTypes.LOGIN;
  }

  void login(){
    var loginFormController = Get.find<LoginFormController>();
    loginFormController.login();
  }

  void register(){
    var registerFormController = Get.find<RegisterFormController>();
    registerFormController.register();
  }

}
