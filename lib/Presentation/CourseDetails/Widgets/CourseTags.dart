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
        SizedBox(
          height: 40,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.course.value.tags?.length ?? 0,
              itemBuilder: (context, index) {
                var tag = controller.course.value.tags![index];
                return Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: InkWell(
                      onTap: () {},
                      child: Material(
                          color: const Color(0xff7A7272).withOpacity(0.3),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              tag,
                              style: const TextStyle().withIranSans(),
                            ),
                          ))),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
