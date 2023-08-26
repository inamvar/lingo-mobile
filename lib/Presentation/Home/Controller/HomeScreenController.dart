import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Banner.dart';
import 'package:lingo/Core/Dto/Models/SearchItem.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ISearchByTagUseCase.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import '../../../Core/Interfaces/UseCases/General/IGetBannersUseCase.dart';

class HomeScreenController extends GetxController {
  final IGetBannersUseCase iGetBannersUseCase;
  final ISearchByTagUseCase iSearchByTagUseCase;

  HomeScreenController(this.iGetBannersUseCase, this.iSearchByTagUseCase);

  var isLoadingBanners = false.obs;
  var isLoadingBestSells = false.obs;
  var isLoadingTopPackages = false.obs;

  RxList<Banner> banners = RxList();
  RxList<SearchItem> bestSellPackages = RxList();
  RxList<SearchItem> topPackages = RxList();

  var currentCarouselIndex = 0.obs;

  @override
  void onReady() {
    getBanners();
    getBestSells();
    super.onReady();
  }

  getBanners() {
    isLoadingBanners.value = true;

    iGetBannersUseCase.execute().then((result) {
      isLoadingBanners.value = false;

      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        banners.addAll(response.data?.banners ?? []);
      });
    });
  }

  getBestSells() {
    isLoadingBestSells.value = true;

    PaginationRequestDtoUseCase params =
        const PaginationRequestDtoUseCase(pageNumber: 1, filter: "آموزش");
    iSearchByTagUseCase.execute(params: params).then((result) {
      isLoadingBestSells.value = false;

      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        bestSellPackages.addAll(response.data?.data ?? []);
      });
    });
  }
}
