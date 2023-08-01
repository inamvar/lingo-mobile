import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Message.dart';

class MessageDetailScreenController extends GetxController{
  late Message message;

  @override
  void onInit() {
    message = Get.arguments["message"];
    super.onInit();
  }
}