import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/PriceExtension.dart';

import '../../../Core/Dto/Models/Course.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({
    super.key, required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CachedNetworkImage(
                      height: 215,
                      imageUrl:
                      course.thumbnailImageUrl ??
                          ""),
                  Text(
                    course.title ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle().withIranSans(),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Text(
                    course.getIRR() ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle().withIranSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff47CB78)
                    ),
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