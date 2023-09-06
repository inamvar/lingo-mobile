import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Package.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/PackagesRemoteDataSource.dart';

import '../../../Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Utils/ApiEndpoints.dart';

class PackagesRemoteDataSourceImpl extends PackagesRemoteDataSource {
  @override
  Future<BaseNetworkResponse<GetPackagesResponseDtoUseCase>> getAllPackages(
      PaginationRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var url = ApiEndpoints.findAll;
    if (requestDtoUseCase.path != null) url = "$url/${requestDtoUseCase.path}";
    var result = await dio
        .get(url, queryParameters: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<GetPackagesResponseDtoUseCase>(
          data: GetPackagesResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<Package>> getGoldenPackage() async{
    var dio = BaseBrain.dio;
    var result = await dio
        .get(ApiEndpoints.goldenPackage)
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      Package package = Package.fromJson(response.data!["data"][0]);
      return BaseNetworkResponse<Package>(
          data: package,
          message: response.message);
    });

    return result;
  }
}
