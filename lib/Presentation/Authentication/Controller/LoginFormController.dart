import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Models/User.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IGetProfileUseCase.dart';
import 'package:lingo/Presentation/Authentication/Controller/AuthenticationScreenController.dart';
import 'package:lingo/Presentation/Main/MainScreen.dart';
import 'package:lingo/infrastructure/DataSources/Local/IdentityLocalDataSourceImpl.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import '../../../Core/Dto/Enums/MessageType.dart';
import '../../../Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import '../../../Core/Interfaces/UseCases/Auth/ISignInUseCase.dart';

class LoginFormController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();

  TextEditingController? loginEmailController;
  TextEditingController? loginPasswordController;

  final ILoginUseCase iLoginUseCase;
  final IGetProfileUseCase iGetProfileUseCase;

  final authController = Get.find<AuthenticationScreenController>();

  LoginFormController(
      {required this.iGetProfileUseCase, required this.iLoginUseCase});

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
        response.fold((serverError) {
          authController.isLoading.value = false;
          ShowMessage.getSnackBar(
              message: serverError.errorMessage!, type: MessageType.ERROR);
        }, (response) {
          IdentityLocalDataSourceImpl.saveToken(response.data!);
          getProfile();
        });
      });
    } else {}
  }

  getProfile() {
    iGetProfileUseCase.execute().then((value) {
      authController.isLoading.value = false;

      value.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage!,
              type: MessageType.ERROR), (r) {
        var userData = r.data!.data!;
        User user = User.fromJson(userData);
        IdentityLocalDataSourceImpl.saveUser(user);

        Get.back();

        ShowMessage.getSnackBar(
            message: "${StringResource.loginSuccessMessage} ${user.firstName!}",
            type: MessageType.SUCCESS);

      });
    });
  }

  storeAuthInfo(ResponseDtoUseCase response) {

  }

  bool isFormValid() {
    return loginFormKey.currentState?.validate() ?? false;
  }

  void showRegisterForm() {
    authController.showRegisterForm();
  }
}
