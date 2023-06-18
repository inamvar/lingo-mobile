import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CourseExtensions.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CommonWidgets/ConfirmButton.dart';
import 'package:lingo/Presentation/CommonWidgets/RoundedNetworkImage.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseDescription.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseHead.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CoursePrice.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseVideos.dart';

class CourseDetailsScreen extends StatelessWidget {
  CourseDetailsScreen({Key? key}) : super(key: key);

  final _controller = Get.find<CourseDetailsScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return BaseScreen(
        child: Obx(() => (_controller.isLoading.value)
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
                      CourseHead(),
                      CourseVideos(),
                      CourseDescription(),
                      CoursePrice(),
                      Column(
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
                              shrinkWrap: true,
                              itemCount:
                                  _controller.course.value.tags?.length ?? 0,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 10,
                                      crossAxisCount: 4,
                                      mainAxisExtent: 40,
                                      crossAxisSpacing: 10),
                              itemBuilder: (context, index) {
                                var tag = _controller.course.value.tags![index];
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Material(
                                        color: const Color(0xff7A7272)
                                            .withOpacity(0.3),
                                        child:
                                        Center(child: Text(tag,
                                        style: const TextStyle().withIranSans(),))),
                                  ),
                                );
                              })
                        ],
                      )
                    ],
                  ),
                ),
              )));
  }
}
