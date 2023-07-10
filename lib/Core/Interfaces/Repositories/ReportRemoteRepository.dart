import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';
import '../../Dto/Models/Failure.dart';

abstract class ReportRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<PurchasedCoursesResponse>>>
      getMyCourses(GetPackagesRequestDtoUseCase requestDtoUseCase);
}
