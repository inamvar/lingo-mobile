import 'package:get/get.dart';
import 'package:lingo/Presentation/Authentication/AuthenticationScreen.dart';
import 'package:lingo/Presentation/Authentication/ChangePassScreen.dart';
import 'package:lingo/Presentation/Authentication/ResetPasswordScreen.dart';
import 'package:lingo/Presentation/Main/MainScreen.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Auth/AuthScreenControllerBindings.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Auth/ChangePassControllerBindings.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Auth/ResetPassControllerBindings.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Main/MainScreenControllerBinding.dart';

class Routes {
  static List<GetPage> navRoutes = [
    GetPage(
        name: authentication,
        page: () => AuthenticationScreen(),
        binding: AuthScreenControllerBindings()),
    GetPage(
        name: resetPassword,
        page: () => ResetPasswordScreen(),
        binding: ResetPassControllerBindings()),
    GetPage(
        name: changePassword,
        page: () => ChangePassScreen(),
        binding: ChangePassControllerBindings()),
    GetPage(
      name: main,
      page: () => MainScreen(),
      binding: MainScreenControllerBinding()
    )
  ];

  static const root = "/";

  //Main
  static const main = "${root}Main";

  //Authentication
  static const authentication = "${root}Authentication";
  static const resetPassword = "$authentication/ResetPassword";
  static const changePassword = "$authentication/ChangePassword";
}
