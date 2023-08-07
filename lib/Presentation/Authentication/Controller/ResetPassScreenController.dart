import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IForgotPassUseCase.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import '../../../Core/Dto/Enums/MessageType.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class ResetPassScreenController extends GetxController {
  final IForgotPassUseCase iForgotPassUseCase;

  final resetPassFormKey = GlobalKey<FormState>();

  TextEditingController? emailController;

  ResetPassScreenController({required this.iForgotPassUseCase});

  var isLoading = false.obs;

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController?.dispose();
    super.onClose();
  }

  resetPassRequest() {
    if (isFormValid()) {
      isLoading.value = true;
      var request = ForgotPassRequestDtoUseCase(email: emailController?.text);
      iForgotPassUseCase.execute(params: request).then((value) {
        isLoading.value = false;
        value.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage!,
                type: MessageType.ERROR), (response) {
          ShowMessage.getSnackBar(
              message: StringResource.resetPassEmailSentMsg,
              type: MessageType.SUCCESS);
          Get.toNamed(Routes.changePassword, arguments: {
            "email": emailController?.text,
            "expireTime": response.data!.expirationTime!
          });
        });
      });
    }
  }

  bool isFormValid() {
    return resetPassFormKey.currentState?.validate() ?? false;
  }
}
