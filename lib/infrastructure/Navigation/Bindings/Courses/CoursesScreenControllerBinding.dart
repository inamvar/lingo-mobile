import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/Courses/Controller/CoursesScreenController.dart';

class CoursesScreenControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CoursesScreenController(appSingleton()));
  }

}