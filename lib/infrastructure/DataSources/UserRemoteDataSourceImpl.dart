import 'dart:convert';

import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/UserRemoteDataSource.dart';

import '../../Core/Helpers/BaseBrain.dart';
import '../../Core/Utils/ApiEndpoints.dart';

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> forgotPass(
      ForgotPassRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.forgotPass, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<ResponseDtoUseCase>(
          data: response, message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> resetPass(ResetPassRequestDtoUseCase requestDtoUseCase) async{
    var dio = BaseBrain.dio;

    var result = await dio
        .put(ApiEndpoints.resetPass, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<ResponseDtoUseCase>(
          data: response, message: response.message);
    });

    return result;
  }
}
