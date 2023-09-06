import 'package:better_player/better_player.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';

class BaseVideoPlayerController extends GetxController{
  final Video video;

  BetterPlayerDataSource? betterPlayerDataSource;
  BetterPlayerController? betterPlayerController;

  var isPlayerInitialized = false.obs;

  BaseVideoPlayerController(this.video);

  @override
  void onInit() {
    if (video.videoHls != null) {
      initializeVideoControllers();
    }

    super.onInit();
  }

  @override
  void onClose() {
    // betterPlayerController?.dispose(forceDispose: true);
    super.onClose();
  }

  initializeVideoControllers() {

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