import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetCourseByIdUseCase.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class CourseDetailsScreenController extends GetxController {
  Rx<Course> course = const Course().obs;

  var isLoading = false.obs;

  final IGetCourseByIdUseCase getCourseByIdUseCase;

  CourseDetailsScreenController(this.getCourseByIdUseCase);

  late String courseId;

  @override
  void onInit() {
    courseId = Get.arguments["courseId"];

    super.onInit();
  }


  @override
  void onReady() {
    getCourse();

    super.onReady();
  }

  getCourse() {
    isLoading.value = true;

    getCourseByIdUseCase.execute(params: courseId).then((result) {
      isLoading.value = false;

      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        course.value = response.data!;
      });
    });
  }
}
