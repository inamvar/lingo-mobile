import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Report/DownloadReceiptRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/OrderHistoryResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';
import '../../Dto/Models/Failure.dart';
import '../../Dto/Models/Order.dart';

abstract class ReportRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<PurchasedCoursesResponse>>>
      getMyCourses(PaginationRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<OrderHistoryResponse>>>
      getMyTransactions(PaginationRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, Response<dynamic>>> downloadTransactionReceipt(
      DownloadReceiptRequestDtoUseCase requestDtoUseCase);
}
