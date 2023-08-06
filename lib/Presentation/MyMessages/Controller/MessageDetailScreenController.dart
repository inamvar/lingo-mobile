import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Message.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IGetCommentByIdUseCase.dart';

import '../../../Core/Dto/Enums/MessageType.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class MessageDetailScreenController extends GetxController{
  Message? message;

  final IGetCommentByIdUseCase iGetCommentById;

  MessageDetailScreenController(this.iGetCommentById);

  int? messageId;

  var isLoading = false.obs;

  @override
  void onInit() {
    messageId = Get.arguments["messageId"];

    super.onInit();
  }


  @override
  void onReady() {
    if(messageId != null){
      getCommentById();
    }

    super.onReady();
  }

  getCommentById(){
    isLoading.value = true;

    iGetCommentById.execute(params: messageId).then((result){
      isLoading.value = false;

      result.fold((serverError) => ShowMessage.getSnackBar(
          message: serverError.errorMessage!,
          type: MessageType.ERROR) , (response) {
        message = response.data;
      });
    });
  }

}