import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';

import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';

import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';

import '../../../Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Interfaces/DataSources/Remote/GeneralRemoteDataSource.dart';
import '../../../Core/Utils/ApiEndpoints.dart';

class GeneralRemoteDataSourceImpl implements GeneralRemoteDataSource{

  @override
  Future<BaseNetworkResponse<SearchResponseDtoUseCase>> search(PaginationRequestDtoUseCase requestDtoUseCase)async {
    var dio = BaseBrain.dio;
    var result = await dio
        .get(ApiEndpoints.search, queryParameters: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<SearchResponseDtoUseCase>(
          data: SearchResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

}