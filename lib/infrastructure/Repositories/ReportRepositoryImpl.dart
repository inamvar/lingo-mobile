import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Report/DownloadReceiptRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/OrderHistoryResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';
import 'package:lingo/Core/Interfaces/Repositories/ReportRemoteRepository.dart';

import '../../Core/Interfaces/DataSources/Remote/ReportRemoteDataSource.dart';

class ReportRepositoryImpl extends ReportRemoteRepository {
  final ReportRemoteDataSource dataSource;

  ReportRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<PurchasedCoursesResponse>>>
      getMyCourses(PaginationRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.getMyCourses(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<OrderHistoryResponse>>>
      getMyTransactions(PaginationRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.getMyTransactions(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, Response>> downloadTransactionReceipt(
      DownloadReceiptRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.downloadTransactionReceipt(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
