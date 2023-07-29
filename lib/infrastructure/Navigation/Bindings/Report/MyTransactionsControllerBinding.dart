import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/MyTransactions/Controller/MyTransactionsController.dart';

class MyTransactionsControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(
            () => MyTransactionsController(appSingleton()));
  }

}