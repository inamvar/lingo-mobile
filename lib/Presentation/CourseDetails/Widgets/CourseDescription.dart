import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';

import '../../../Core/Configs/StringResource.dart';

class CourseDescription extends StatelessWidget {
  CourseDescription({Key? key}) : super(key: key);

  final _controller = Get.find<CourseDetailsScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringResource.courseDescription,
            style: const TextStyle().withIranSans(
                color: colorScheme.background,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        Html(
          data: _controller.course.value.description,
          style: {
            "body": Style(
              fontFamily: 'IranSans',
              lineHeight: const LineHeight(1.8),
              textAlign: TextAlign.justify,
            ),
            "a": Style(
              fontFamily: 'IranSans',
              lineHeight: const LineHeight(1.8),
              textAlign: TextAlign.justify,
              textDecoration: TextDecoration.none,
              color: Colors.black
            ),
          },
        )
      ],
    );
  }
}
