import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Order.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IOrderHistoryUseCase.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class MyTransactionsController extends GetxController {
  var orders = RxList<Order>();

  var maxPage = 1;
  var currentPage = 1;
  var perPage = 20;

  var totalOrders = 0.obs;

  var isLoading = false.obs;

  RefreshController? refreshController;

  final IOrderHistoryUseCase orderHistoryUseCase;

  MyTransactionsController(this.orderHistoryUseCase);

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
                  StringResource.serverErrorOccurred), (response) {
        orders.addAll(response.data?.data ?? []);
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

  void downloadReceipt(Order item) {
    var url =
        "http://45.92.93.170:5004/api/v1/Report/GetOrderHistoryPdf/${item.orderId!}";
    launchUrl(
        mode: LaunchMode.externalApplication, Uri.parse(url),webViewConfiguration:
    WebViewConfiguration(headers: {"Authorization":BaseBrain.authToken!.accessToken!}));
  }
}
