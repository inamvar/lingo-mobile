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
import 'package:auto_size_text/auto_size_text.dart';

import '../../../Core/Dto/Models/Course.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({
    super.key,
    required this.course,
    this.margin,
    this.width,
    this.height,
    this.imageWidth,
    this.imageHeight,
  });

  final Course course;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final double? imageWidth;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 260,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Get.to(
                () => CourseDetailsScreen(controllerTag: course.id.toString()),
                preventDuplicates: false,
                arguments: {"courseId": course.id.toString()});
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedNetworkImage(
                  width: imageWidth ?? 200,
                  height: imageHeight ?? 200,
                  imageUrl: course.thumbnailImageUrl ?? ""),
              AutoSizeText(
                course.title ?? "",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle().withIranSans(),
              ),
              Text(
                course.getPriceIRR() ?? "",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle().withIranSans(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffF84C4D)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
