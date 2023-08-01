

import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/MyMessages/Controller/MyMessagesScreenController.dart';

class MyMessagesControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(
            () => MyMessagesScreenController(appSingleton()));
  }

}