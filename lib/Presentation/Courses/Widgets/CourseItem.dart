import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/CourseExtensions.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/CommonWidgets/RoundedNetworkImage.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';
import 'package:lingo/Presentation/CourseDetails/CourseDetailsScreen.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import '../../../Core/Dto/Models/Course.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({
    super.key,
    required this.course,
    this.margin,
  });

  final Course course;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              Get.to(() => CourseDetailsScreen(controllerTag: course.id.toString()),
                  preventDuplicates: false,
                  arguments: {"courseId": course.id.toString()});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedNetworkImage(width: 160,
                      height: 215, imageUrl: course.thumbnailImageUrl ?? ""),
                  Text(
                    course.title ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle().withIranSans(),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Text(
                    course.getPriceIRR() ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle().withIranSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff47CB78)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
