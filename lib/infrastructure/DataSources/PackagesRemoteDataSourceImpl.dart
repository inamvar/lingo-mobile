import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/PackagesRemoteDataSource.dart';

import '../../Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../Core/Helpers/BaseBrain.dart';
import '../../Core/Utils/ApiEndpoints.dart';

class PackagesRemoteDataSourceImpl extends PackagesRemoteDataSource {
  @override
  Future<BaseNetworkResponse<GetPackagesResponseDtoUseCase>> getAllPackages(
      GetPackagesRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var result = await dio
        .get(ApiEndpoints.findAll, queryParameters: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<GetPackagesResponseDtoUseCase>(
          data: GetPackagesResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }
}
