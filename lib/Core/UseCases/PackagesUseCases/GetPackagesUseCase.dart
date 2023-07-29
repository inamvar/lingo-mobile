import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/PackagesRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Packages/IGetPackagesUseCase.dart';

class GetPackagesUseCase extends IGetPackagesUseCase {
  PackagesRemoteRepository repository;

  GetPackagesUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<GetPackagesResponseDtoUseCase>>>
      execute({PaginationRequestDtoUseCase? params}) async {
    return await repository.getAllPackages(params!)!;
  }
}
