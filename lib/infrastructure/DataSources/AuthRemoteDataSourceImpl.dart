import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/DataSources/AuthDataSource/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Utils/ApiEndpoints.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<TokenResponseDtoUseCase> login(
      LoginRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.login, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return TokenResponseDtoUseCase.fromJson(response.data!);
    });

    return result;
  }

  @override
  Future<RegisterResponseDtoUseCase> register(
      RegisterRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.register, data: jsonEncode(requestDtoUseCase))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return RegisterResponseDtoUseCase.fromJson(response.data!);
    });

    return result;
  }
}
