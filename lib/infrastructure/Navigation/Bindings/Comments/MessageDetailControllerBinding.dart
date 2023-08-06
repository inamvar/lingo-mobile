import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/MyMessages/Controller/MessageDetailScreenController.dart';

class MessageDetailControllerBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(
            () => MessageDetailScreenController(appSingleton()));
  }
}