import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/PackagesRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/PackagesRemoteRepository.dart';

class PackagesRepositoryImpl extends PackagesRemoteRepository {
  final PackagesRemoteDataSource dataSource;

  PackagesRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<GetPackagesResponseDtoUseCase>>>?
      getAllPackages(GetPackagesRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.getAllPackages(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
