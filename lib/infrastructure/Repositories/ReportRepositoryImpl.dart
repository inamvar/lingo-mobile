import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';
import 'package:lingo/Core/Interfaces/Repositories/ReportRemoteRepository.dart';

import '../../Core/Interfaces/DataSources/Remote/ReportRemoteDataSource.dart';

class ReportRepositoryImpl extends ReportRemoteRepository {
  final ReportRemoteDataSource dataSource;

  ReportRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<PurchasedCoursesResponse>>>
      getMyCourses(GetPackagesRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.getMyCourses(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
