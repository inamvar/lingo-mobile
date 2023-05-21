import 'package:get/get.dart';

import 'AuthenticationScreenController.dart';

class RegisterFormController extends GetxController{
  final authController = Get.find<AuthenticationScreenController>();

  void showLoginForm() {
    authController.showLoginForm();
  }



}