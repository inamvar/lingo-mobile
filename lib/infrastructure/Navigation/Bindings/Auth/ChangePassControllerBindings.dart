import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/Authentication/Controller/ChangePassScreenController.dart';

class ChangePassControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ChangePassScreenController>(
            () => ChangePassScreenController(iResetPassUseCase: appSingleton()));
  }

}