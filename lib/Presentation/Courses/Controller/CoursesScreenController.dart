import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetPackageCoursesUseCase.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class CoursesScreenController extends GetxController{
  late RefreshController refreshController;

  final IGetPackageCoursesUseCase iGetPackageCoursesUseCase;

  CoursesScreenController(this.iGetPackageCoursesUseCase);

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var isLoading = false.obs;

  late String packageSlug;

  var courses = RxList<Course>();

  @override
  void onInit() {
    packageSlug = Get.arguments["packageSlug"];
    refreshController = RefreshController();
    super.onInit();
  }

  @override
  void onReady() {
    getCourses(isFirstTime: true);
    super.onReady();
  }

  @override
  void onClose() {
    refreshController.dispose();
    super.onClose();
  }

  getCourses({bool isFirstTime = false}) {
    if (isFirstTime) {
      isLoading.value = true;
    }

    var params = GetPackagesRequestDtoUseCase(
        pageSize: perPage,
        pageNumber: currentPage,
      path: packageSlug
    );

    iGetPackageCoursesUseCase.execute(params: params).then((result) {
      isLoading.value = false;
      refreshController.loadComplete();
      refreshController.refreshCompleted();

      result.fold(
              (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred),
              (response) {
            courses.addAll(response.data?.data ?? []);
            if(courses.isEmpty) refreshController.loadNoData();
            maxPage = response.data?.totalPages ?? 1;
          });
    });
  }

  void loadNextPage(){
    if(currentPage <= maxPage){
      currentPage++;
      getCourses();
    }else{
      refreshController.loadComplete();
    }
  }

}