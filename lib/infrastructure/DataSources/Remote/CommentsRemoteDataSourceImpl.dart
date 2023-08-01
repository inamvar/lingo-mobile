import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Comments/SendMessageRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/CommentsRemoteDataSource.dart';

import '../../../Core/Dto/UseCases/Responses/Comments/GetCommentsResponseDtoUseCase.dart';
import '../../../Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Utils/ApiEndpoints.dart';

class CommentsRemoteDataSourceImpl extends CommentsRemoteDataSource {
  @override
  Future<BaseNetworkResponse<GetCommentsResponseDtoUseCase>> getComments(
      PaginationRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var url = ApiEndpoints.comments;
    if (requestDtoUseCase.path != null) url = "$url/${requestDtoUseCase.path}";
    var result = await dio
        .get(url, queryParameters: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<GetCommentsResponseDtoUseCase>(
          data: GetCommentsResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> addComment(
      SendMessageRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var url = ApiEndpoints.addComment;
    var result = await dio
        .post(url, data: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<ResponseDtoUseCase>(
          data: ResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }
}
