import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';
import 'package:lingo/Presentation/Profile/Controller/ProfileScreenController.dart';
import 'package:lingo/Presentation/Search/Controller/SearchScreenController.dart';

class MainScreenControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(
            () => MainScreenController(iLogoutUseCase: appSingleton()));

    Get.lazyPut<ProfileScreenController>(
            () => ProfileScreenController());

    Get.lazyPut<SearchScreenController>(() => SearchScreenController(
      searchUseCase: appSingleton()
    ));
  }

}