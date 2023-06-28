import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/CourseDetailsScreenController.dart';

class CourseTags extends StatelessWidget {
  const CourseTags({super.key, required this.controller});

  final CourseDetailsScreenController controller;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringResource.tags,
          style: const TextStyle().withIranSans(
              color: colorScheme.background,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.course.value.tags?.length ?? 0,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                mainAxisExtent: 40,
                crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              var tag = controller.course.value.tags![index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: InkWell(
                  onTap: () {},
                  child: Material(
                      color: const Color(0xff7A7272).withOpacity(0.3),
                      child: Center(
                          child: Text(
                        tag,
                        style: const TextStyle().withIranSans(),
                      ))),
                ),
              );
            })
      ],
    );
  }
}
