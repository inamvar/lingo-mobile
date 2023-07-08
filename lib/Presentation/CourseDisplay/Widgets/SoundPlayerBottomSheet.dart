import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CourseDisplay/Controller/SoundPlayerController.dart';

class SoundPlayerBottomSheet extends StatelessWidget {
  const SoundPlayerBottomSheet(
      {super.key, required this.title, required this.audioUrl});

  final String title;
  final String audioUrl;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.put(
          SoundPlayerController(title: title ?? "", audioUrl: audioUrl)),
      builder: (SoundPlayerController controller) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: 170,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      controller.title,
                      maxLines: 2,
                      style: const TextStyle().withIranSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    leading: IconButton(
                      onPressed: () {
                        (controller.isPlaying.value)
                            ? controller.audioPlayer.pause()
                            : controller.audioPlayer.play();
                      },
                      icon: (controller.isLoading.value)
                          ? const SizedBox(
                        width: 20,height: 20,
                            child: CircularProgressIndicator(
                                color: Colors.white,
                              strokeWidth: 2,
                              ),
                          )
                          : (controller.isPlaying.value)
                              ? const FaIcon(
                                  FontAwesomeIcons.pause,
                                  color: Colors.white,
                                )
                              : const FaIcon(
                                  FontAwesomeIcons.play,
                                  color: Colors.white,
                                ),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.xmark,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ProgressBar(
                      progress: controller.currentDuration.value,
                      total: controller.totalDuration.value,
                      buffered: controller.bufferedDuration.value,
                      progressBarColor: Colors.white,
                      bufferedBarColor: const Color(0xffBDCAE1),
                      thumbColor: Colors.white,
                      thumbGlowColor: Colors.white,
                      thumbRadius: 10,
                      thumbGlowRadius: 15,
                      baseBarColor: const Color(0xff9E9E9E),
                      timeLabelTextStyle:
                          TextStyle().withIranSans(color: Colors.white),
                      onSeek: (seekDuration) {
                        controller.audioPlayer.seek(seekDuration);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
