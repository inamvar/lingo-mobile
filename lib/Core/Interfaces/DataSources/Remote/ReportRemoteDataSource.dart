import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/Order.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Report/DownloadReceiptRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/OrderHistoryResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';

abstract class ReportRemoteDataSource {
  Future<BaseNetworkResponse<PurchasedCoursesResponse>> getMyCourses(
      PaginationRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<OrderHistoryResponse>> getMyTransactions(
      PaginationRequestDtoUseCase requestDtoUseCase);

  Future<Response<dynamic>> downloadTransactionReceipt(DownloadReceiptRequestDtoUseCase order);
}
