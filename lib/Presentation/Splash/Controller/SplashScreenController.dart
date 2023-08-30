import 'dart:async';

import 'package:get/get.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

class SplashScreenController extends GetxController {

  @override
  void onInit() {
    print("object");
    super.onInit();
  }

  @override
  void onReady() {
    startTimer();
    super.onReady();
  }

  void startTimer() {
    Timer(const Duration(seconds: 2), () => Get.offAndToNamed(Routes.main));
  }
}
