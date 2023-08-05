import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:internet_file/internet_file.dart';
import 'package:internet_file/storage_io.dart';
import 'package:lingo/Core/Dto/Models/Order.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Report/DownloadReceiptRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IDownloadReceiptUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IOrderHistoryUseCase.dart';
import 'package:lingo/Core/Utils/Extensions/OrderExtensions.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file_plus/open_file_plus.dart';

class MyTransactionsController extends GetxController {
  var orders = RxList<Order>();

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var totalOrders = 0.obs;

  var isLoading = false.obs;

  RefreshController? refreshController;

  final IOrderHistoryUseCase orderHistoryUseCase;
  final IDownloadReceiptUseCase downloadReceiptUseCase;

  MyTransactionsController(
      this.orderHistoryUseCase, this.downloadReceiptUseCase);

  @override
  void onInit() {
    refreshController = RefreshController();
    super.onInit();
  }

  @override
  void onClose() {
    refreshController?.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    getTransactions(isFirstTime: true);
    super.onReady();
  }

  getTransactions({bool isFirstTime = false}) {
    if (isFirstTime) {
      isLoading.value = true;
    }

    var params = PaginationRequestDtoUseCase(
      pageSize: perPage,
      pageNumber: currentPage,
    );

    orderHistoryUseCase.execute(params: params).then((result) {
      isLoading.value = false;
      refreshController?.loadComplete();
      refreshController?.refreshCompleted();

      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) async {
        List<Order> tempOrders = response.data?.data ?? [];
        for (var element in tempOrders) {
          await checkOrderReceiptExist(element);
        }
        orders.addAll(tempOrders);

        maxPage = response.data?.totalPages ?? 1;
        totalOrders.value = response.data?.totalRecords ?? 0;
      });
    });
  }

  void loadNextPage() {
    if (currentPage <= maxPage) {
      currentPage++;
      getTransactions();
    } else {
      refreshController?.loadNoData();
    }
  }

  void downloadReceipt(Order item) async {
    var isExist = await checkOrderReceiptExist(item);
    orders.refresh();
    if (!isExist) {
      item.isDownloading = true;
      orders.refresh();

      var params = DownloadReceiptRequestDtoUseCase(
          order: item,
          onReceiveProgress: (rec, total) {
            item.downloadPercent = rec / total;
            orders.refresh();
          });

      downloadReceiptUseCase.execute(params: params).then((result) {
        item.isDownloading = false;
        orders.refresh();

        result.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage ??
                    StringResource.serverErrorOccurred), (response) async {
          item.isExist = true;
          orders.refresh();
          OpenFile.open(await item.getReceiptPath());
        });
      });
    }
    else{
      OpenFile.open(await item.getReceiptPath());
    }
  }

  Future<bool> checkOrderReceiptExist(Order item) async {
    var isExist = await File(await item.getReceiptPath()).exists();
    item.isExist = isExist;
    return isExist;
  }
}
