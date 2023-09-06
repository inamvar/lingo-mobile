import 'package:better_player/better_player.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';
import 'package:lingo/Presentation/CommonControllers/BaseVideoPlayerController.dart';

class CourseDisplayScreenController extends GetxController {
  late Video video;

  BetterPlayerDataSource? betterPlayerDataSource;
  BetterPlayerController? betterPlayerController;

  var isPlayerInitialized = false.obs;

  @override
  void onInit() {
    video = Get.arguments["video"];
    Get.put(BaseVideoPlayerController(video));

    if (video.videoHls != null) {
      initializeVideoControllers();
    }

    super.onInit();
  }

  @override
  void onClose() {
    betterPlayerController?.dispose(forceDispose: true);
    super.onClose();
  }

  initializeVideoControllers() async {

    betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        videoFormat: BetterPlayerVideoFormat.hls,
        cacheConfiguration: const BetterPlayerCacheConfiguration(
          useCache: true,
        ),
        video.videoHls!);

    betterPlayerController = BetterPlayerController(
        const BetterPlayerConfiguration(
          aspectRatio: 16/9,
          looping: false,
          autoPlay: false,
        ),
        betterPlayerDataSource: betterPlayerDataSource);

    isPlayerInitialized.value = true;
  }
}
