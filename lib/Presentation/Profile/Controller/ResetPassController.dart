import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ChangePassRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';

import '../../../Core/Interfaces/UseCases/User/IChangePassUseCase.dart';
import 'ProfileScreenController.dart';

class ResetPassController extends GetxController {
  TextEditingController? oldPassController;
  TextEditingController? newPassController;
  TextEditingController? repeatPassController;

  final resetPassFormKey = GlobalKey<FormState>();

  final IChangePassUseCase changePassUseCase;

  ResetPassController({required this.changePassUseCase});

  @override
  void onInit() {
    initTextControllers();
    super.onInit();
  }

  @override
  void onClose() {
    oldPassController?.dispose();
    newPassController?.dispose();
    repeatPassController?.dispose();

    super.onClose();
  }

  void initTextControllers() {
    oldPassController = TextEditingController();
    newPassController = TextEditingController();
    repeatPassController = TextEditingController();
    update();
  }

  bool isFormValid() {
    return resetPassFormKey.currentState?.validate() ?? false;
  }

  changePass() {
    if (isFormValid()) {
      if (newPassController?.text != repeatPassController?.text) {
        ShowMessage.getSnackBar(
            message: StringResource.passwordMatchError,
            type: MessageType.WARNING);
        return;
      }

      Get.find<ProfileScreenController>().isLoading.value = true;

      changePassUseCase
          .execute(
              params: ChangePassRequestDtoUseCase(
                  currentPassword: oldPassController?.text,
                  newPassword: newPassController?.text,
                  confirmNewPassword: repeatPassController?.text))
          .then((value) {
        Get.find<ProfileScreenController>().isLoading.value = false;
        value.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage ??
                    StringResource.serverErrorOccurred,
                type: MessageType.ERROR), (response) {
          ShowMessage.getSnackBar(
              message: response.message!, type: MessageType.SUCCESS);
          clearFields();
        });
      });
    }
  }

  void clearFields() {
    oldPassController?.clear();
    newPassController?.clear();
    repeatPassController?.clear();
  }
}
