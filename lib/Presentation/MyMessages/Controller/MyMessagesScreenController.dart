import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Message.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IGetCommentsUseCase.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../../Core/Helpers/ShowMessage.dart';
import '../../../infrastructure/Navigation/Routes.dart';

class MyMessagesScreenController extends GetxController {
  RefreshController? refreshController;

  final IGetCommentsUseCase getCommentsUseCase;

  MyMessagesScreenController(this.getCommentsUseCase);

  var messages = RxList<Message>();

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
    getMessages(isFirstTime: true);
    super.onReady();
  }

  @override
  void onClose() {
    refreshController?.dispose();
    super.onClose();
  }

  getMessages({bool isFirstTime = false}) {
    if (isFirstTime) {
      isLoading.value = true;
    }

    var params = PaginationRequestDtoUseCase(
      pageSize: perPage,
      pageNumber: currentPage,
    );

    getCommentsUseCase.execute(params: params).then((result) {
      isLoading.value = false;
      refreshController?.loadComplete();
      refreshController?.refreshCompleted();

      result.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        messages.addAll(response.data?.data ?? []);
        maxPage = response.data?.totalPages ?? 1;
        totalCourses.value = response.data?.totalRecords ?? 0;
      });
    });
  }

  void loadNextPage() {
    if (currentPage <= maxPage) {
      currentPage++;
      getMessages();
    } else {
      refreshController?.loadNoData();
    }
  }

  void refreshPage() {
    currentPage = 1;
    messages.clear();
    getMessages(isFirstTime: false);
  }

  void addMessage() async {
    var result = await Get.toNamed(Routes.addMessage);
    if (result) {
      refreshController?.requestRefresh();
    }
  }

  void showMessage(Message message) {
    message.seen = true;
    messages.refresh();
    Get.toNamed(Routes.messageDetail, arguments: {"messageId": message.id});
  }
}
