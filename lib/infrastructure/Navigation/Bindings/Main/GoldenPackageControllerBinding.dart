import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/GoldenPackage/Controller/GoldenPackageController.dart';

class GoldenPackageControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GoldenPackageController>(
            () => GoldenPackageController(appSingleton()));
  }

}