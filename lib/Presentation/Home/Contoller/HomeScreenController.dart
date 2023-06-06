import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Models/Package.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/Packages/IGetPackagesUseCase.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreenController extends GetxController {
  late RefreshController refreshController;

  IGetPackagesUseCase getPackagesUseCase;

  HomeScreenController({required this.getPackagesUseCase});

  var packages = RxList<Package>();

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var isLoading = false.obs;

  @override
  void onInit() {
    resetRefreshController();
    super.onInit();
  }

  @override
  void onReady() {
    getProducts(isFirstTime: true);

    super.onReady();
  }

  @override
  void onClose() {
    refreshController.dispose();
    super.onClose();
  }

  getProducts({bool isFirstTime = false}) {
    if (isFirstTime) {
      isLoading.value = true;
    }

    var params = GetPackagesRequestDtoUseCase(
      pageSize: perPage,
      pageNumber: currentPage
    );

    getPackagesUseCase.execute(params: params).then((result) {
      isLoading.value = false;
      refreshController.loadComplete();
      refreshController.refreshCompleted();

      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred),
          (response) {
            packages.addAll(response.data?.data ?? []);
            maxPage = response.data?.totalPages ?? 1;
          });
    });
  }

  void loadNextPage(){
    if(currentPage <= maxPage){
      currentPage++;
      getProducts();
    }else{
      refreshController.loadNoData();
    }
  }

  void refreshPage(){
    currentPage = 1;
    packages.clear();
    getProducts(isFirstTime: false);
  }

  void resetRefreshController() {
    refreshController = RefreshController();
  }
}
