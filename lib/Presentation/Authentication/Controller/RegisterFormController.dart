import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/infrastructure/DataSources/Local/IdentityLocalDataSourceImpl.dart';

import '../../../Core/Dto/Models/User.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Interfaces/UseCases/Auth/IRegisterUseCase.dart';
import '../../../infrastructure/Navigation/Routes.dart';
import 'AuthenticationScreenController.dart';

class RegisterFormController extends GetxController {
  final registerFormKey = GlobalKey<FormState>();

  final IRegisterUseCase iRegisterUseCase;

  TextEditingController? nameController;
  TextEditingController? lastNameController;
  TextEditingController? emailController;
  TextEditingController? phoneController;
  TextEditingController? referralController;
  TextEditingController? passController;
  TextEditingController? repeatPassController;

  RegisterFormController({required this.iRegisterUseCase});

  final authController = Get.find<AuthenticationScreenController>();

  @override
  void onInit() {
    nameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    referralController = TextEditingController();
    passController = TextEditingController();
    repeatPassController = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    nameController?.dispose();
    lastNameController?.dispose();
    emailController?.dispose();
    phoneController?.dispose();
    referralController?.dispose();
    passController?.dispose();
    repeatPassController?.dispose();

    super.onClose();
  }

  void showLoginForm() {
    authController.showLoginForm();
  }

  void register() {
    if (isFormValid()) {
      if (passController?.text != repeatPassController?.text) {
        ShowMessage.getSnackBar(
            message: StringResource.passwordMatchError,
            type: MessageType.WARNING);
        return;
      }

      authController.isLoading.value = true;

      RegisterRequestDtoUseCase requestDtoUseCase = RegisterRequestDtoUseCase(
          firstName: nameController?.text,
          lastName: lastNameController?.text,
          password: passController?.text,
          confirmPassword: repeatPassController?.text,
          email: emailController?.text,
          marketerCode: referralController?.text,
          phoneNumber: phoneController?.text);

      iRegisterUseCase.execute(params: requestDtoUseCase).then((value) {
        authController.isLoading.value = false;

        value.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage!,
                type: MessageType.ERROR), (response) {
          storeAuthInfo(response.data!);
          Get.back();

          ShowMessage.getSnackBar(
              message: StringResource.registerSuccessMessage,
              type: MessageType.SUCCESS);
        });
      });
    } else {
      ShowMessage.getSnackBar(
          message: StringResource.formNotValidError, type: MessageType.WARNING);
    }
  }

  storeAuthInfo(RegisterResponseDtoUseCase response) {
    IdentityLocalDataSourceImpl.saveToken(response.authToken!);

    User user = User.fromJson(response.toJson());

    IdentityLocalDataSourceImpl.saveUser(user);
  }

  bool isFormValid() {
    return registerFormKey.currentState?.validate() ?? false;
  }
}
