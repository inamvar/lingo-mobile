import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../Courses/Widgets/CourseItem.dart';
import '../Controller/CourseDetailsScreenController.dart';

class RelatedCourses extends StatelessWidget {
  const RelatedCourses({super.key, required this.controller});

  final CourseDetailsScreenController controller;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Obx(() => (controller.isLoadingRelated.value) ?
    Center(child: SpinKitFadingCircle(
      size: 20,
      color: colorScheme.background,
    ),) : Column(
      mainAxisSize: MainAxisSize.min,
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
            physics: const BouncingScrollPhysics(),
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
    ));
  }
}
