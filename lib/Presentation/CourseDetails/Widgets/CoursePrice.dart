import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CourseExtensions.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../CommonWidgets/ConfirmButton.dart';

class CoursePrice extends StatelessWidget {
  CoursePrice({Key? key}) : super(key: key);

  final _controller = Get.find<CourseDetailsScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (_controller.course.value.discount != null)
              Text(_controller.course.value.getIRR() ?? "",
                  textAlign: TextAlign.center,
                  style: const TextStyle().withIranSans(
                    textDecoration: TextDecoration.lineThrough,
                    fontSize: 14,
                    color: const Color(0xff525252),
                  )),
            Text(_controller.course.value.getIRR() ?? "",
                textAlign: TextAlign.center,
                style: const TextStyle().withIranSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: const Color(0xff47CB78))),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        if (_controller.course.value.discount != null)
          SizedBox(
            height: 90,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: ConfirmButton(
                      bottomMargin: 0,
                      buttonText: StringResource.buyCourseBtn,
                      onConfirm: () {}),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/discount_bg.png",
                          ),
                          Transform.rotate(
                            angle: -0.5,
                            child: Center(
                                child: Text(
                              "%${(_controller.course.value.discount!.discountValue ?? 0).toString()}",
                              style: TextStyle().withIranSans(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
