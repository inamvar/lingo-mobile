import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/AuthPageTypes.dart';

import '../../../Core/Interfaces/UseCases/ISignInUseCase.dart';

class AuthenticationScreenController extends GetxController{

  var pageType = AuthPageTypes.LOGIN.obs;

  final ILoginUseCase iLoginUseCase;

  AuthenticationScreenController({required this.iLoginUseCase});

  void toRegister() {
    pageType.value = AuthPageTypes.REGISTER;
  }

  void toLogin() {
    pageType.value = AuthPageTypes.LOGIN;
  }


}