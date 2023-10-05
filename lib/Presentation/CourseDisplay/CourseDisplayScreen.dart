import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CommonWidgets/DescriptionWidget.dart';
import 'package:lingo/Presentation/CourseDetails/Widgets/CourseVideos.dart';
import 'package:lingo/Presentation/CourseDisplay/Controller/SoundPlayerController.dart';
import 'package:lingo/Presentation/CourseDisplay/Widgets/VideoPlayerWidget.dart';
import 'package:lingo/Presentation/CourseDisplay/Widgets/SoundPlayerBottomSheet.dart';

import 'Controller/CourseDisplayScreenController.dart';

class CourseDisplayScreen extends StatelessWidget {
  const CourseDisplayScreen({super.key, required this.controllerTag});

  final String controllerTag;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    var controller = Get.put(
        CourseDisplayScreenController(appSingleton()),
        tag: controllerTag);

    return BaseScreen(
      child: Obx(() => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17, bottom: 70),
          child: (controller.isLoading.value)
              ? SpinKitFadingCircle(
            color: colorScheme.background,
            size: 24,
          )
              : Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.video.title ?? "",
                style: const TextStyle().withIranSans(
                    color: colorScheme.background,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              VideoPlayerWidget(controller: Get.find(tag: controller.video.id.toString()),),
              DescriptionWidget(
                content: controller.video.description ?? "",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (controller.video.examFileUrl != null &&
                      controller.video.examFileUrl!.isNotEmpty)
                    InkWell(
                      onTap: () {
                        controller.video.examFileUrl?.openAsUrl();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.download,
                              color: Color(0xffF84C4D),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              StringResource.downloadFile,
                              style: const TextStyle().withIranSans(
                                  color: Color(0xff525252),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  if (controller.video.podcastHls != null)
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          SoundPlayerBottomSheet(
                            title: controller.video.title ?? "",
                            audioUrl: controller.video.podcastHls!,
                          ),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              )),
                          barrierColor: Colors.black.withOpacity(0.5),
                          backgroundColor: colorScheme.background,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.play,
                              color: Color(0xffF84C4D),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              StringResource.playAudio,
                              style: const TextStyle().withIranSans(
                                  color: Color(0xff525252),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20,),
              CourseVideos(course: controller.course)
            ],
          ),
        ),
      )),
    );
  }
}
