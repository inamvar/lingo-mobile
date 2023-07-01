import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';
import 'package:lingo/Presentation/CommonWidgets/DescriptionWidget.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseHead.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CoursePrice.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseTags.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseVideos.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/RelatedCourses.dart';
import 'package:lingo/Presentation/Courses/Widgets/CourseItem.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({Key? key, required this.controllerTag})
      : super(key: key);

  final String controllerTag;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    var controller = Get.put(
        CourseDetailsScreenController(appSingleton(), appSingleton()),
        tag: controllerTag);

    return BaseScreen(
        child: Obx(() => (controller.isLoading.value)
            ? SpinKitFadingCircle(
                size: 20,
                color: colorScheme.background,
              )
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 100),
                  child: Wrap(
                    runSpacing: 30,
                    children: [
                      CourseHead(controller: controller),
                      CourseVideos(controller: controller),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(StringResource.courseDescription,
                              style: const TextStyle().withIranSans(
                                  color: colorScheme.background,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          DescriptionWidget(
                            content: controller.course.value.description ?? "",
                          ),
                        ],
                      ),
                      CoursePrice(controller: controller),
                      CourseTags(controller: controller),
                      RelatedCourses(controller: controller)
                    ],
                  ),
                ),
              )));
  }
}
