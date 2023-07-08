import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CommonWidgets/DescriptionWidget.dart';
import 'package:lingo/Presentation/CourseDisplay/Controller/SoundPlayerController.dart';
import 'package:lingo/Presentation/CourseDisplay/VideoPlayerWidget.dart';
import 'package:lingo/Presentation/CourseDisplay/Widgets/SoundPlayerBottomSheet.dart';

import 'Controller/CourseDisplayScreenController.dart';

class CourseDisplayScreen extends StatelessWidget {
  CourseDisplayScreen({super.key});

  final _controller = Get.find<CourseDisplayScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return BaseScreen(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17, bottom: 70),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _controller.video.title ?? "",
                style: const TextStyle().withIranSans(
                    color: colorScheme.background,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              VideoPlayerWidget(),
              DescriptionWidget(
                content: _controller.video.description ?? "",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_controller.video.examFileUrl != null &&
                      _controller.video.examFileUrl!.isNotEmpty)
                    InkWell(
                      onTap: () {
                        _controller.video.examFileUrl?.openAsUrl();
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
                  if (_controller.video.podcastHls != null)
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                            SoundPlayerBottomSheet(
                              title: _controller.video.title ?? "",
                              audioUrl: _controller.video.podcastHls!,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              )
                            ),
                            barrierColor: Colors.black.withOpacity(0.5),
                            backgroundColor: colorScheme.background,);
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
