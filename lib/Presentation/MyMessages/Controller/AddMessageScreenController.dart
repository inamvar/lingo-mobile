import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Comments/SendMessageRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IAddCommentUseCase.dart';

import '../../../Core/Dto/Enums/MessageType.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class AddMessageController extends GetxController {
  final formKey = GlobalKey<FormState>();

  TextEditingController? titleController;
  TextEditingController? bodyController;

  final IAddCommentUseCase iAddCommentUseCase;

  AddMessageController(this.iAddCommentUseCase);

  var isLoading = false.obs;

  @override
  void onInit() {
    titleController = TextEditingController();
    bodyController = TextEditingController();

    super.onInit();
  }

  addMessage() {
    if (isFormValid()) {
      isLoading.value = true;

      var params = SendMessageRequestDtoUseCase(
          body: bodyController?.text, subject: titleController?.text);

      iAddCommentUseCase.execute(params: params).then((result) {
        isLoading.value = false;

        result.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage!,
                type: MessageType.ERROR), (response) async {
          Get.back(result: true);
          ShowMessage.getSnackBar(
              message: StringResource.messageSentSuccessfully,
              type: MessageType.SUCCESS);
        });
      });
    }
  }

  bool isFormValid() {
    return formKey.currentState?.validate() ?? false;
  }
}
