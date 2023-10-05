import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/Models/Package.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';
import 'package:lingo/Core/Interfaces/UseCases/Packages/IGetGoldenPackageUseCase.dart';
import 'package:lingo/Presentation/CommonControllers/BaseVideoPlayerController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import '../../../infrastructure/Navigation/Routes.dart';

class GoldenPackageController extends GetxController {
  final IGetGoldenPackageUseCase iGetGoldenPackageUseCase;

  GoldenPackageController(this.iGetGoldenPackageUseCase);

  var package = Rx<Package>(const Package());
  var course = Rx<Course>(const Course());

  var isLoading = false.obs;

  late Video video;

  @override
  void onInit() async {
    await fetchGoldenPackage();
    super.onInit();
  }

  fetchGoldenPackage() async {
    isLoading.value = true;

    await iGetGoldenPackageUseCase.execute().then((result) {
      isLoading.value = false;
      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) async {
        package.value = response.data!;
        course.value = package.value.courses!.first!
            .copyWith(thumbnailImageUrl: package.value.thumbnailUrl,);
        initVideoPlayer();
      });
    });
  }

  initVideoPlayer() {
    video = course.value.chapters!.first.videos!.first;
    Get.put(BaseVideoPlayerController(video),tag: video.id!.toString());
  }

  void checkout() {
    if (BaseBrain.isLogin.value) {
      Get.toNamed(Routes.checkout, arguments: {"course": course.value});
    } else {
      Get.toNamed(Routes.authentication);
    }
  }
}
