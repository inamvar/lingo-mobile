import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Presentation/CommonControllers/BaseVideoPlayerController.dart';

import '../Controller/CourseDisplayScreenController.dart';

class VideoPlayerWidget extends StatelessWidget {
  VideoPlayerWidget({super.key, required this.controller});


  final BaseVideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => (controller.isPlayerInitialized.value) ? Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        FittedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 368,
              height: 210,
              child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: BetterPlayer(controller: controller.betterPlayerController!,)),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    ) : Container());
  }
}
