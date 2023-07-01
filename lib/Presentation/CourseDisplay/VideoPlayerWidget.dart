import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/CourseDisplayScreenController.dart';

class VideoPlayerWidget extends StatelessWidget {
  VideoPlayerWidget({super.key});

  final _controller = Get.find<CourseDisplayScreenController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => (_controller.isPlayerInitialized.value) ? Column(
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
                  child: BetterPlayer(controller: _controller.betterPlayerController!,)),
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
