import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/General/GetBannersResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Order/CreateOrderResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/GeneralRemoteRepository.dart';

import '../../Core/Interfaces/DataSources/Remote/GeneralRemoteDataSource.dart';

class GeneralRepositoryImpl extends GeneralRemoteRepository {
  final GeneralRemoteDataSource dataSource;

  GeneralRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<SearchResponseDtoUseCase>>>?
      search(PaginationRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.search(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<CreateOrderResponseDtoUseCase>>>?
      createOrder(String courseId) async {
    try {
      var result = await dataSource.createOrder(courseId);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<GetBannersResponseDtoUseCase>>>?
      getBanners() async {
    try {
      var result = await dataSource.getBanners();
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<SearchResponseDtoUseCase>>>?
      searchByTag(PaginationRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.searchByTag(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
