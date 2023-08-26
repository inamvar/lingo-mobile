import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';

import '../../../../Presentation/SearchByTag/Controller/SearchByTagController.dart';

class SearchByTagControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(
            () => SearchTagController(appSingleton()));
  }

}