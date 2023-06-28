import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseDescription.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseHead.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CoursePrice.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseTags.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseVideos.dart';
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
                      CourseDescription(controller: controller),
                      CoursePrice(controller: controller),
                      CourseTags(controller: controller),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringResource.relatedCourses,
                            style: const TextStyle().withIranSans(
                                color: colorScheme.background,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 340,
                            child: ListView.builder(
                              itemCount: controller.relatedCourses.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return CourseItem(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    course: controller.relatedCourses[index]);
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )));
  }
}
