import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/SearchItem.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ISearchByTagUseCase.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class SearchTagController extends GetxController{
  final ISearchByTagUseCase iSearchByTagUseCase;

  RefreshController? refreshController;

  var searchResults = RxList<SearchItem>();

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var isLoading = false.obs;

  late String filter;

  SearchTagController(this.iSearchByTagUseCase);

  @override
  void onInit() {
    refreshController = RefreshController();
    filter = Get.arguments["filter"];
    super.onInit();
  }

  @override
  void onReady() {
    search(isFirstTime: true);
    super.onReady();
  }

  @override
  void onClose() {
    refreshController?.dispose();
    super.onClose();
  }

  search({bool isFirstTime = false}){
    if (isFirstTime) {
      isLoading.value = true;
    }

    var params = PaginationRequestDtoUseCase(
        pageSize: perPage,
        pageNumber: currentPage,
        filter: filter,);

    iSearchByTagUseCase.execute(params: params).then((result) {
      isLoading.value = false;
      refreshController?.loadComplete();
      refreshController?.refreshCompleted();

      result.fold(
              (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        searchResults.addAll(response.data?.data ?? []);
        maxPage = response.data?.totalPages ?? 1;
      });
    });
  }

  void loadNextPage() {
    if (currentPage <= maxPage) {
      currentPage++;
      search();
    } else {
      refreshController?.loadNoData();
    }
  }

  void refreshPage() {
    currentPage = 1;
    searchResults.clear();
    search(isFirstTime: false);
  }
}