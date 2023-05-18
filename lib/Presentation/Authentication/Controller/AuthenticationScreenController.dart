import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/AuthPageTypes.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';

import '../../../Core/Interfaces/UseCases/ISignInUseCase.dart';

class AuthenticationScreenController extends GetxController {
  var pageType = AuthPageTypes.LOGIN.obs;

  final ILoginUseCase iLoginUseCase;

  TextEditingController? loginEmailController;
  TextEditingController? loginPasswordController;

  AuthenticationScreenController({required this.iLoginUseCase});

  @override
  void onInit() {
    loginEmailController = TextEditingController();
    loginPasswordController = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    loginEmailController?.dispose();
    loginPasswordController?.dispose();

    super.onClose();
  }

  void toRegister() {
    pageType.value = AuthPageTypes.REGISTER;
  }

  void toLogin() {
    pageType.value = AuthPageTypes.LOGIN;
  }

  login() {
    if (loginValid()) {
      LoginRequestDtoUseCase requestDtoUseCase = LoginRequestDtoUseCase(
        userName: loginEmailController?.text,
        password: loginPasswordController?.text
      );

      iLoginUseCase.execute(params: requestDtoUseCase).then((response){
        response.fold((l){
          print(l);
        }, (r) {
          print("response got: $r");
        });
      });
    }
  }

  bool loginValid() {
    var email = loginEmailController?.text ?? "";
    var pass = loginPasswordController?.text ?? "";

    if (email.isNotEmpty && pass.isNotEmpty) return true;
    return false;
  }
}
