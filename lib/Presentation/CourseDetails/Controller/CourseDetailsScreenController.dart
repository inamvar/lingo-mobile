import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetCourseByIdUseCase.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import '../../../Core/Interfaces/UseCases/Course/IGetPackageCoursesUseCase.dart';
import '../../CourseDisplay/CourseDisplayScreen.dart';

class CourseDetailsScreenController extends GetxController {
  Rx<Course> course = const Course().obs;

  var isLoading = false.obs;

  var isLoadingRelated = false.obs;

  final IGetCourseByIdUseCase getCourseByIdUseCase;
  final IGetPackageCoursesUseCase getRelatedCoursesUseCase;

  CourseDetailsScreenController(
      this.getCourseByIdUseCase, this.getRelatedCoursesUseCase);

  late String courseId;

  var relatedCourses = RxList<Course>();

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
        getRelatedCourses();

        var lastSeenSlug = course.value.lastSeenVideoSlug;
        if(lastSeenSlug != null && lastSeenSlug.isNotEmpty){
          Get.to(
                  () => CourseDisplayScreen(controllerTag: course.value.lastSeenVideoId!.toString()),
              preventDuplicates: false,
              arguments: {
                "videoSlug": lastSeenSlug,
                "course": course.value
              });
        }
      });
    });
  }

  getRelatedCourses(){
    isLoadingRelated.value = true;

    getRelatedCoursesUseCase.execute(
      params: PaginationRequestDtoUseCase(
        pageSize: 30,
        path: course.value.package?.slug
      )
    ).then((result) {
      isLoadingRelated.value = false;

      result.fold((serverError) => ShowMessage.getSnackBar(
          message: serverError.errorMessage ??
              StringResource.serverErrorOccurred), (response) {
        relatedCourses.value = response.data!.data!;
      });
    });
  }

  void checkout() {
    if(BaseBrain.isLogin.value){
      Get.toNamed(Routes.checkout,arguments: {
        "course": course.value
      });
    }
    else{
      Get.toNamed(Routes.authentication);
    }
  }
}
