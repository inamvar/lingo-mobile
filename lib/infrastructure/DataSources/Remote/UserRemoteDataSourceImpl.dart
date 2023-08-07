import 'dart:convert';

import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ChangePassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/UpdateProfileRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/UserRemoteDataSource.dart';

import '../../../Core/Dto/UseCases/Responses/Auth/ResetPassResponseDtoUseCase.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Utils/ApiEndpoints.dart';

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<BaseNetworkResponse<ResetPassResponseDtoUseCase>> forgotPass(
      ForgotPassRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.forgotPass, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResetPassResponseDtoUseCase response = ResetPassResponseDtoUseCase.fromJson(value.data["data"]);
      return BaseNetworkResponse<ResetPassResponseDtoUseCase>(
          data: response, message: value.data["message"]);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> resetPass(
      ResetPassRequestDtoUseCase requestDtoUseCase) async {
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

  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> getProfile() async {
    var dio = BaseBrain.dio;

    var result = await dio.get(ApiEndpoints.profile).then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<ResponseDtoUseCase>(
          data: response, message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> updateProfile(
      UpdateProfileRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .put(ApiEndpoints.profile, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<ResponseDtoUseCase>(
          data: response, message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> changePass(
      ChangePassRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .put(ApiEndpoints.changePassword, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<ResponseDtoUseCase>(
          data: response, message: response.message);
    });

    return result;
  }
}
