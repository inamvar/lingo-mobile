import 'package:get/get.dart';
import 'package:lingo/Presentation/Authentication/AuthenticationScreen.dart';
import 'package:lingo/Presentation/Authentication/ChangePassScreen.dart';
import 'package:lingo/Presentation/Authentication/ResetPasswordScreen.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/AuthScreenControllerBindings.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/ResetPassControllerBindings.dart';

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
      page: () => const ChangePassScreen(),
    ),
  ];

  static const root = "/";

  //Home
  static const home = "${root}Home";

  //Authentication
  static const authentication = "${root}Authentication";
  static const resetPassword = "$authentication/ResetPassword";
  static const changePassword = "$authentication/ChangePassword";
}
