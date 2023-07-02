import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/Courses/Controller/CoursesScreenController.dart';
import 'package:lingo/Presentation/Courses/Widgets/CoursesList.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

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
      footer: ClassicFooter(
        idleText: "",
        idleIcon: null,
        canLoadingIcon: null,
        noMoreIcon: FaIcon(FontAwesomeIcons.file,color: Colors.grey.shade700),
        noDataText: StringResource.noCourseFound,
        textStyle: const TextStyle()
            .withIranSans(fontSize: 16,color: Colors.grey.shade700, fontWeight: FontWeight.bold),
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
