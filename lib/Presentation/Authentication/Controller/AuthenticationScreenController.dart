import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/AuthPageTypes.dart';

class AuthenticationScreenController extends GetxController{

  var pageType = AuthPageTypes.LOGIN.obs;

  void toRegister() {
    pageType.value = AuthPageTypes.REGISTER;
  }

  void toLogin() {
    pageType.value = AuthPageTypes.LOGIN;
  }

  void toResetPass() {
    pageType.value = AuthPageTypes.RESET_PASSWORD;
  }


}