import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/PurchasedCourse.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IPurchasedCoursesUseCase.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class MyCoursesController extends GetxController{

  RefreshController? refreshController;

  final IPurchasedCoursesUseCase purchasedCoursesUseCase;

  MyCoursesController({required this.purchasedCoursesUseCase});

  var courses = RxList<PurchasedCourse>();

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var totalCourses = 0.obs;

  var isLoading = false.obs;

  @override
  void onInit() {
    refreshController = RefreshController();
    super.onInit();
  }

  @override
  void onReady() {
    getPurchasedCourses(isFirstTime: true);
    super.onReady();
  }

  @override
  void onClose() {
    refreshController?.dispose();
    super.onClose();
  }

  getPurchasedCourses({bool isFirstTime = false}) {
    if (isFirstTime) {
      isLoading.value = true;
    }

    var params = GetPackagesRequestDtoUseCase(
        pageSize: perPage,
        pageNumber: currentPage,);

    purchasedCoursesUseCase.execute(params: params).then((result) {
      isLoading.value = false;
      refreshController?.loadComplete();
      refreshController?.refreshCompleted();

      result.fold(
              (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        courses.addAll(response.data?.data ?? []);
        maxPage = response.data?.totalPages ?? 1;
        totalCourses.value = response.data?.totalRecords ?? 0;
      });
    });
  }

  void loadNextPage() {
    if (currentPage <= maxPage) {
      currentPage++;
      getPurchasedCourses();
    } else {
      refreshController?.loadNoData();
    }
  }
}