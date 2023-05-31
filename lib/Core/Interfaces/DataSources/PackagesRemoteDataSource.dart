import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';

abstract class PackagesRemoteDataSource {
  Future<BaseNetworkResponse<GetPackagesResponseDtoUseCase>> getAllPackages(
      GetPackagesRequestDtoUseCase requestDtoUseCase
      );
}