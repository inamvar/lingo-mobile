import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Presentation/Authentication/Controller/AuthenticationScreenController.dart';

import '../../../Core/Dto/Enums/MessageType.dart';
import '../../../Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import '../../../Core/Interfaces/UseCases/ISignInUseCase.dart';

class LoginFormController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();

  TextEditingController? loginEmailController;
  TextEditingController? loginPasswordController;

  final ILoginUseCase iLoginUseCase;

  final authController = Get.find<AuthenticationScreenController>();

  LoginFormController({required this.iLoginUseCase});

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

  login() {
    if (isFormValid()) {
      authController.isLoading.value = true;

      LoginRequestDtoUseCase requestDtoUseCase = LoginRequestDtoUseCase(
          userName: loginEmailController?.text,
          password: loginPasswordController?.text);

      iLoginUseCase.execute(params: requestDtoUseCase).then((response) {
        authController.isLoading.value = false;

        response.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage!,
                type: MessageType.ERROR), (r) {
          ShowMessage.getSnackBar(
              message: "Login Success", type: MessageType.SUCCESS);
        });
      });
    } else {}
  }

  bool isFormValid() {
    return loginFormKey.currentState?.validate() ?? false;
  }

  void showRegisterForm() {
    authController.showRegisterForm();
  }
}
