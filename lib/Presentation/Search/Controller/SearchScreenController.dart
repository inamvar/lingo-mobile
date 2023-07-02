import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/Models/SearchItem.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ISearchUseCase.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../CourseDetails/CourseDetailsScreen.dart';

class SearchScreenController extends GetxController {
  final ISearchUseCase searchUseCase;

  SearchScreenController({required this.searchUseCase});

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var isLoading = false.obs;

  var searchResults = RxList<SearchItem>();

  TextEditingController? searchFieldController;
  late RefreshController refreshController;

  var hasSearched = false.obs;

  @override
  void onInit() {
    searchFieldController = TextEditingController();
    refreshController = RefreshController();
    super.onInit();
  }


  @override
  void onClose() {
    searchFieldController?.dispose();
    refreshController.dispose();
    super.onClose();
  }

  onSearchSubmitted() async{
    hasSearched.value = (searchFieldController?.text ?? "").isNotEmpty;
    currentPage = 1;
    if(hasSearched.value) search(isFirstTime: true);
  }

  onSearchChanged(String text){
    if((searchFieldController?.text ?? "").isEmpty){
      hasSearched.value = false;
    }
  }

  search({bool isFirstTime = false}) {
    if(isFirstTime) isLoading.value = true;

    var params = GetPackagesRequestDtoUseCase(
        pageNumber: currentPage,
        pageSize: perPage,
        filter: searchFieldController?.text);

    searchUseCase.execute(params: params).then((value) {
      isLoading.value = false;
      refreshController.loadComplete();
      refreshController.refreshCompleted();

      value.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred,
              type: MessageType.ERROR),
          (response) {
            if(isFirstTime) searchResults.clear();
            searchResults.addAll(response.data?.data ?? []);
            maxPage = response.data?.totalPages ?? 1;

          });
    });
  }

  void loadNextPage(){
    if(currentPage <= maxPage){
      currentPage++;
      search();
    }else{
      refreshController.loadNoData();
    }
  }

  void refreshPage(){
    currentPage = 1;
    searchResults.clear();
    search(isFirstTime: false);
  }

  handleItemClick(SearchItem searchItem){
    switch(searchItem.productType!){
      case "Package":
        Get.toNamed(Routes.courses,arguments: {"packageSlug":searchItem.slug ?? ""});
        break;
      case "Course":
        Get.to(() => CourseDetailsScreen(controllerTag: searchItem.slug!),
            preventDuplicates: false,
            arguments: {"courseId": searchItem.id!.toString()});
        break;
    }
  }
}
