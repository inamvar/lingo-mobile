import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/PackagesList/Controller/PackageListController.dart';
import 'package:lingo/Presentation/PackagesList/PackageList.dart';

import '../../Core/Configs/StringResource.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _controller = Get.put(
      PackageListController(getPackagesUseCase: appSingleton()),
      tag: "homeScreen");

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PackageListController>(
      init: _controller,
      tag: "homeScreen",
      builder: (controller) {
        return PackageList(
            title: StringResource.packages, controller: controller);
      },
    );
  }
}
