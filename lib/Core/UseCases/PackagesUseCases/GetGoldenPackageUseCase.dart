import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/Models/Package.dart';
import 'package:lingo/Core/Interfaces/Repositories/PackagesRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Packages/IGetGoldenPackageUseCase.dart';

class GetGoldenPackageUseCase extends IGetGoldenPackageUseCase {
  final PackagesRemoteRepository repository;

  GetGoldenPackageUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<Package>>> execute(
      {NoParams? params}) async{
    return await repository.getGoldenPackage()!;
  }
}
