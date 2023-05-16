import 'package:get/get.dart';
import 'package:lingo/Presentation/Authentication/AuthenticationScreen.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/AuthScreenControllerBindings.dart';

class Routes {
  static List<GetPage> navRoutes = [
    GetPage(
        name: authentication,
        page: () => AuthenticationScreen(),
        binding: AuthScreenControllerBindings())
  ];

  static const root = "/";

  //Home
  static const home = "${root}Home";

  //Authentication
  static const authentication = "${root}Authentication";
}
