import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/Configs/StringResource.dart';
import '../../Core/Dto/Enums/PackageType.dart';
import '../../Core/Utils/InjectionContainer.dart';
import '../CommonWidgets/BaseScreen.dart';
import '../PackagesList/Controller/PackageListController.dart';
import '../PackagesList/PackageList.dart';

class EducationalPackagesScreen extends StatelessWidget {
  EducationalPackagesScreen({super.key});

  final _controller = Get.put(
      PackageListController(
          type: PackageType.EDUCATIONAL, getPackagesUseCase: appSingleton()),
      tag: "eduPackages");

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        child: GetBuilder<PackageListController>(
          tag: "eduPackages",
          init: _controller,
          builder: (controller) {
            return PackageList(
              controller: controller,
              title: StringResource.educationalPackages,
            );
          },
        ));
  }
}
