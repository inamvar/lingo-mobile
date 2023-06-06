import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RefreshTokenRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Utils/ApiEndpoints.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<BaseNetworkResponse<TokenResponseDtoUseCase>> login(
      LoginRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.login, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      var dataResponse = TokenResponseDtoUseCase.fromJson(response.data!);
      return BaseNetworkResponse<TokenResponseDtoUseCase>(
          data: dataResponse, message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<RegisterResponseDtoUseCase>> register(
      RegisterRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.register, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      var dataResponse = RegisterResponseDtoUseCase.fromJson(response.data!);
      return BaseNetworkResponse<RegisterResponseDtoUseCase>(
          data: dataResponse, message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<TokenResponseDtoUseCase>> refreshToken(
      RefreshTokenRequestDtoUseCase requestDtoUseCase) async{
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.refreshToken, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      var dataResponse = TokenResponseDtoUseCase.fromJson(response.data!);
      return BaseNetworkResponse<TokenResponseDtoUseCase>(
          data: dataResponse, message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<ResponseDtoUseCase>> logout() async{
    var dio = BaseBrain.dio;

    var result = await dio
        .get(ApiEndpoints.logout)
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<ResponseDtoUseCase>(
          data: response, message: response.message);
    });

    return result;
  }
}
