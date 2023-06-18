import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';

class CourseDetailsControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CourseDetailsScreenController(appSingleton()));
  }

}