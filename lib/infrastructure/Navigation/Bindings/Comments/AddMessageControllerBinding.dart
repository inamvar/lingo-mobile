import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/MyMessages/Controller/AddMessageScreenController.dart';

class AddMessageControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(
            () => AddMessageController(appSingleton()));
  }

}