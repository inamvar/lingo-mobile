import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/PackagePath.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/PackagesList/Controller/PackageListController.dart';
import 'package:lingo/Presentation/PackagesList/PackageList.dart';

class FreePackagesScreen extends StatelessWidget {
  FreePackagesScreen({super.key});

  final _controller = Get.put(
      PackageListController(
          path: PackagePath.FREE, getPackagesUseCase: appSingleton()),
      tag: "freePackages");

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        child: GetBuilder<PackageListController>(
      tag: "freePackages",
      init: _controller,
      builder: (controller) {
        return PackageList(
          controller: controller,
          title: StringResource.freePackages,
        );
      },
    ));
  }
}
