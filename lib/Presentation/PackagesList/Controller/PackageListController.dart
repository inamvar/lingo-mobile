import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/PackageType.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/Models/Package.dart';
import '../../../Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import '../../../Core/Interfaces/UseCases/Packages/IGetPackagesUseCase.dart';

class PackageListController extends GetxController {
  RefreshController? refreshController;

  IGetPackagesUseCase getPackagesUseCase;

  PackageListController(
      {this.type = PackageType.NONE, required this.getPackagesUseCase}) {
    resetRefreshController();
  }

  final PackageType type;

  var packages = RxList<Package>();

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var isLoading = false.obs;

  @override
  void onReady() {
    getProducts(isFirstTime: true);

    super.onReady();
  }

  @override
  void onClose() {
    refreshController?.dispose();
    super.onClose();
  }

  getProducts({bool isFirstTime = false}) {
    if (isFirstTime) {
      isLoading.value = true;
    }

    var params = GetPackagesRequestDtoUseCase(
        pageSize: perPage,
        pageNumber: currentPage,
        filter: type == PackageType.EDUCATIONAL ? "آموزش" : null,
        path: type == PackageType.FREE ? "free" : null);

    getPackagesUseCase.execute(params: params).then((result) {
      isLoading.value = false;
      refreshController?.loadComplete();
      refreshController?.refreshCompleted();

      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        packages.addAll(response.data?.data ?? []);
        maxPage = response.data?.totalPages ?? 1;
      });
    });
  }

  void loadNextPage() {
    if (currentPage <= maxPage) {
      currentPage++;
      getProducts();
    } else {
      refreshController?.loadNoData();
    }
  }

  void refreshPage() {
    currentPage = 1;
    packages.clear();
    getProducts(isFirstTime: false);
  }

  void resetRefreshController() {
    refreshController = RefreshController();
  }
}
