import 'package:better_player/better_player.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetVideoBySlugUseCase.dart';
import 'package:lingo/Presentation/CommonControllers/BaseVideoPlayerController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class CourseDisplayScreenController extends GetxController {
  late Video video;
  late Course course;

  BetterPlayerDataSource? betterPlayerDataSource;

  var isPlayerInitialized = false.obs;

  var isLoading = false.obs;

  final IGetVideoBySlugUseCase iGetVideoBySlugUseCase;

  CourseDisplayScreenController(this.iGetVideoBySlugUseCase);

  @override
  void onInit() {
    course = Get.arguments["course"];
    String? videoSlug = Get.arguments["videoSlug"];
    if(videoSlug != null){
      getVideo(videoSlug);
    }
    super.onInit();
  }

  void initVideo() {
    Get.put(BaseVideoPlayerController(video),tag: video.id!.toString());
  }

  getVideo(String videoSlug){
    isLoading.value = true;

    iGetVideoBySlugUseCase.execute(params: videoSlug).then((result){

      result.fold((serverError) => ShowMessage.getSnackBar(
          message: serverError.errorMessage ??
              StringResource.serverErrorOccurred), (response){
        video = response.data!;
        initVideo();
        isLoading.value = false;

      });

    });
  }
}
