import 'package:get/get.dart';
import 'package:lingo/Presentation/Authentication/AuthenticationScreen.dart';
import 'package:lingo/Presentation/Authentication/ChangePassScreen.dart';
import 'package:lingo/Presentation/Authentication/ResetPasswordScreen.dart';
import 'package:lingo/Presentation/CourseDetails/CourseDetailsScreen.dart';
import 'package:lingo/Presentation/Courses/CoursesScreen.dart';
import 'package:lingo/Presentation/Main/MainScreen.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Auth/AuthScreenControllerBindings.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Auth/ChangePassControllerBindings.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Auth/ResetPassControllerBindings.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Courses/CourseDetailsControllerBinding.dart';
import 'package:lingo/infrastructure/Navigation/Bindings/Courses/CoursesScreenControllerBinding.dart';
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
        binding: MainScreenControllerBinding()),
    GetPage(
        name: courses,
        page: () => CoursesScreen(),
        binding: CoursesScreenControllerBinding()),
    GetPage(
        name: courseDetails,
        page: () => CourseDetailsScreen(),
        binding: CourseDetailsControllerBinding())
  ];

  static const root = "/";

  //Main
  static const main = "${root}Main";

  //Authentication
  static const authentication = "${root}Authentication";
  static const resetPassword = "$authentication/ResetPassword";
  static const changePassword = "$authentication/ChangePassword";

  //Courses
  static const courses = "${root}Courses";
  static const courseDetails = "${root}CourseDetails";
}
