import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/SearchByTag/Controller/SearchByTagController.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../Core/Dto/Models/Course.dart';
import '../Courses/Widgets/CourseItem.dart';

class SearchByTagScreen extends StatelessWidget {
  SearchByTagScreen({super.key});

  final controller = Get.find<SearchTagController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: Obx(() => (controller.isLoading.value)
          ? Center(
              child: SpinKitFadingCircle(
              color: colorScheme.background,
              size: 24,
            ))
          : SmartRefresher(
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
                      controller.filter,
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
                      : (controller.searchResults.isEmpty)
                          ? Center(
                              child: Text(StringResource.noResult,
                              style: const TextStyle().withIranSans(
                              ),),
                            )
                          : GridView.builder(
                              itemCount: controller.searchResults.length,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                var item = controller.searchResults[index];
                                var course = Course(
                                    thumbnailImageUrl: item.thumbnailUrl,
                                    title: item.title,
                                    pricings: item.pricings,
                                    id: item.id);
                                return CourseItem(
                                  height: 180,
                                  imageWidth: 118,
                                  imageHeight: 118,
                                  course: course,
                                  width: 150,
                                  margin: const EdgeInsets.all(10),
                                );
                              },
                            ))
                ],
              ),
            )),
    );
  }

  buildGrid() {
    GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        var item = controller.searchResults[index];
        var course = Course(
            thumbnailImageUrl: item.thumbnailUrl,
            title: item.title,
            pricings: item.pricings,
            id: item.id);
        return CourseItem(
          height: 180,
          imageWidth: 118,
          imageHeight: 118,
          course: course,
          width: 150,
          margin: const EdgeInsets.only(left: 10),
        );
      },
    );
  }
}
