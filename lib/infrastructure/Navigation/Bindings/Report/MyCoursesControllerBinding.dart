import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/MyCourses/Controller/MyCoursesController.dart';

class MyCoursesControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(
            () => MyCoursesController(purchasedCoursesUseCase: appSingleton()));
  }

}