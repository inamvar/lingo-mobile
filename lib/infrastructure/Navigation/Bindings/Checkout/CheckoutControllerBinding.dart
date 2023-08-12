import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/Checkout/Controller/CheckoutScreenController.dart';

class CheckoutControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutScreenController(
        appSingleton(), appSingleton(), appSingleton(),appSingleton()));
  }
}
