import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/Authentication/Controller/ResetPassScreenController.dart';

class ResetPassControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ResetPassScreenController>(
            () => ResetPassScreenController(iForgotPassUseCase: appSingleton()));
  }

}