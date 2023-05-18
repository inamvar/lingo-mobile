
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/Authentication/Controller/AuthenticationScreenController.dart';

class AuthScreenControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationScreenController>(() => AuthenticationScreenController(iLoginUseCase: appSingleton()));
  }

}