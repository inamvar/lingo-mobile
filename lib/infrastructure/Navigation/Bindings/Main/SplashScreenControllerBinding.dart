import 'package:get/get.dart';

import '../../../../Presentation/Splash/Controller/SplashScreenController.dart';

class SplashScreenControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SplashScreenController>(
            SplashScreenController());
  }

}