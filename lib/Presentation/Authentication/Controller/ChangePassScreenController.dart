import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IResetPassUseCase.dart';

class ChangePassScreenController extends GetxController {
  final IResetPassUseCase iResetPassUseCase;

  final changePassFormKey = GlobalKey<FormState>();

  late String email;

  TextEditingController? codeController;
  TextEditingController? passController;
  TextEditingController? repeatPassController;

  ChangePassScreenController({required this.iResetPassUseCase});

  var isLoading = false.obs;

  @override
  void onInit() {
    email = Get.arguments["email"];

    codeController = TextEditingController();
    passController = TextEditingController();
    repeatPassController = TextEditingController();
    super.onInit();
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

  bool isFormValid() {
    return changePassFormKey.currentState?.validate() ?? false;
  }
}
