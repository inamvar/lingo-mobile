import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/PackagesList/Controller/PackageListController.dart';
import 'package:lingo/Presentation/PackagesList/Widgets/PackageListView.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PackageList extends StatelessWidget {
  const PackageList({super.key, required this.controller, required this.title});

  final PackageListController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return SmartRefresher(
      physics: const BouncingScrollPhysics(),
      controller: controller.refreshController!,
      enablePullUp: true,
      enablePullDown: false,
      footer: const ClassicFooter(
        idleText: "",
        noDataText: "",
        loadingText: "",
        failedText: "",
        canLoadingText: "",
      ),
      onRefresh: controller.refreshPage,
      onLoading: controller.loadNextPage,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              title,
              style: const TextStyle().withIranSans(
                  fontSize: 18,
                  color: colorScheme.background,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Obx(() => (controller.isLoading.value)
              ? SpinKitFadingCircle(
            size: 30,
            color: colorScheme.background,
          )
              : PackageListView(packages: controller.packages))
        ],
      ),
    );
  }
}
