import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class SoundPlayerController extends GetxController {
  late AudioPlayer audioPlayer;

  var totalDuration = Duration.zero.obs;
  var currentDuration = Duration.zero.obs;
  var bufferedDuration = Duration.zero.obs;

  var isPlaying = false.obs;
  var isLoading = true.obs;

  final String title;
  final String audioUrl;

  SoundPlayerController({required this.title, required this.audioUrl});

  @override
  void onInit() {
    initPlayer();

    super.onInit();
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }

  void initPlayer() async {
    audioPlayer = AudioPlayer();
    await audioPlayer.setUrl(audioUrl);

    audioPlayer.positionStream.listen((event) {
      currentDuration.value = event;
      update();
    });

    audioPlayer.durationStream.listen((event) {
      if (event != null) totalDuration.value = event;
    });

    audioPlayer.bufferedPositionStream.listen((event) {
      bufferedDuration.value = event;
    });

    audioPlayer.processingStateStream.listen((state) {
      if(state == ProcessingState.completed){
        isPlaying.value = false;
        audioPlayer.seek(Duration.zero);
        audioPlayer.pause();
      }
      else if(state == ProcessingState.ready){
        isLoading.value = false;
      }
      update();
    });

    audioPlayer.playingStream.listen((event) {
      isPlaying.value = event;
      update();
    });

    audioPlayer.play();
  }
}
