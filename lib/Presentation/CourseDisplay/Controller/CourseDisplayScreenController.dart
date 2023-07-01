import 'package:better_player/better_player.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';

class CourseDisplayScreenController extends GetxController {
  late Video video;

  BetterPlayerDataSource? betterPlayerDataSource;
  BetterPlayerController? betterPlayerController;

  var isPlayerInitialized = false.obs;

  @override
  void onInit() {
    video = Get.arguments["video"];


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
