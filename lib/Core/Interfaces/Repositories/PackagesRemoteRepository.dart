import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

abstract class PackagesRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<GetPackagesResponseDtoUseCase>>>?
      getAllPackages(PaginationRequestDtoUseCase requestDtoUseCase);
}
