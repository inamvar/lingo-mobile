import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/Home/Contoller/HomeScreenController.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';

class MainScreenControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(
            () => MainScreenController(iLogoutUseCase: appSingleton()));

    Get.lazyPut<HomeScreenController>(
            () => HomeScreenController(getPackagesUseCase: appSingleton()));
  }

}