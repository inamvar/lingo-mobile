import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IResetPassUseCase.dart';

import '../../../Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import '../../../Core/Interfaces/UseCases/User/IForgotPassUseCase.dart';

class ChangePassScreenController extends GetxController {
  final IResetPassUseCase iResetPassUseCase;
  final IForgotPassUseCase iForgotPassUseCase;

  final changePassFormKey = GlobalKey<FormState>();

  late String email;
  late String expireTime;

  TextEditingController? codeController;
  TextEditingController? passController;
  TextEditingController? repeatPassController;

  ChangePassScreenController({required this.iForgotPassUseCase,required this.iResetPassUseCase});

  var resendTimerValue = 1.0.obs;
  var resendCodeLoading = false.obs;

  var isLoading = false.obs;

  @override
  void onInit() {
    email = Get.arguments["email"];
    expireTime = Get.arguments["expireTime"];

    codeController = TextEditingController();
    passController = TextEditingController();
    repeatPassController = TextEditingController();
    super.onInit();
  }


  @override
  void onReady() {
    initExpireTime();

    super.onReady();
  }

  changePassRequest() {
    if (isFormValid()) {
      if (passController?.text != repeatPassController?.text) {
        ShowMessage.getSnackBar(
            message: StringResource.passwordMatchError,
            type: MessageType.WARNING);
        return;
      }

      isLoading.value = true;

      ResetPassRequestDtoUseCase requestDtoUseCase = ResetPassRequestDtoUseCase(
          userName: email,
          password: passController?.text,
          retypePassword: repeatPassController?.text,
          securityCode: codeController?.text);

      iResetPassUseCase.execute(params: requestDtoUseCase).then((value) {
        isLoading.value = false;

        value.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage ??
                    StringResource.serverErrorOccurred,
                type: MessageType.ERROR), (r) {
          ShowMessage.getSnackBar(
              message: r.message ?? "Reset Pass done",
              type: MessageType.SUCCESS);
        });
      });
    }
  }

  resetPassRequest() {
    resendCodeLoading.value = true;
    var request = ForgotPassRequestDtoUseCase(email: email);
    iForgotPassUseCase.execute(params: request).then((value) {
      resendCodeLoading.value = false;
      value.fold(
              (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage!,
              type: MessageType.ERROR), (response) {
        ShowMessage.getSnackBar(
            message: StringResource.resetPassEmailSentMsg,
            type: MessageType.SUCCESS);
        expireTime = response.data!.expirationTime!;
        resendTimerValue.value = 1.0;
        initExpireTime();
      });
    });
  }

  bool isFormValid() {
    return changePassFormKey.currentState?.validate() ?? false;
  }

  initExpireTime() {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss");
    DateTime expireDate =
    dateFormat.parse(expireTime);
    DateTime currentTime = DateTime.now();
    Duration wholeTime = expireDate.difference(currentTime);
    Duration remainingTime = wholeTime;

    if(currentTime.isBefore(expireDate)){
      Timer.periodic(
        const Duration(seconds: 1),
            (Timer timer) {
          remainingTime -= const Duration(seconds: 1);
          resendTimerValue.value = remainingTime.inSeconds / wholeTime.inSeconds;
          if (remainingTime.inSeconds <= 0) {
            timer.cancel();
          } else {

          }
        },
      );
    }
  }
}
