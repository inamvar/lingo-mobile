import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/Courses/Controller/CoursesScreenController.dart';
import 'package:lingo/Presentation/Courses/Widgets/CoursesList.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'Widgets/CourseItem.dart';

class CoursesScreen extends StatelessWidget {
  CoursesScreen({Key? key}) : super(key: key);

  final _controller = Get.find<CoursesScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
        child: SmartRefresher(
      controller: _controller.refreshController,
      physics: const BouncingScrollPhysics(),
      enablePullUp: true,
      enablePullDown: false,
      onLoading: _controller.loadNextPage,
      footer: const ClassicFooter(
        idleText: "",
        noDataText: "",
        loadingText: "",
        failedText: "",
        canLoadingText: "",
      ),
      child: Obx(() => (_controller.isLoading.value)
          ? SpinKitFadingCircle(
              color: colorScheme.background,
              size: 24,
            )
          : CoursesList(courses: _controller.courses)),
    ));
  }
}
