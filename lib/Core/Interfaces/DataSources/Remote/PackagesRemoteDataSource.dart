import 'package:lingo/Core/Dto/Models/Package.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';

abstract class PackagesRemoteDataSource {
  Future<BaseNetworkResponse<GetPackagesResponseDtoUseCase>> getAllPackages(
      PaginationRequestDtoUseCase requestDtoUseCase
      );

  Future<BaseNetworkResponse<Package>> getGoldenPackage();
}