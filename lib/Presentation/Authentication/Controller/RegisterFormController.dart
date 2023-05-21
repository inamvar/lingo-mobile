import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';

import '../../../Core/Interfaces/UseCases/IRegisterUseCase.dart';
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
          ShowMessage.getSnackBar(
              message: "Register Success", type: MessageType.SUCCESS);
        });
      });
    } else {
      ShowMessage.getSnackBar(
          message: StringResource.formNotValidError, type: MessageType.WARNING);
    }
  }

  bool isFormValid() {
    return registerFormKey.currentState?.validate() ?? false;
  }
}
