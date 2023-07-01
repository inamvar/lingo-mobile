import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';

import '../../Core/Configs/StringResource.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: content,
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
    );
  }
}
