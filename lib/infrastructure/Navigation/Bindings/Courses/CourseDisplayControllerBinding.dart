import 'package:get/get.dart';
import 'package:lingo/Presentation/CourseDisplay/Controller/CourseDisplayScreenController.dart';

class CourseDisplayControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
        () => CourseDisplayScreenController());
  }
}
