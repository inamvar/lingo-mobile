import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RefreshTokenRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/ServerFailure.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/AuthRemoteRepository.dart';

class AuthRepositoryImpl extends AuthRemoteRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<TokenResponseDtoUseCase>>>? login(
      LoginRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await authRemoteDataSource.login(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<RegisterResponseDtoUseCase>>>?
      register(RegisterRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await authRemoteDataSource.register(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<TokenResponseDtoUseCase>>>?
      refreshToken(RefreshTokenRequestDtoUseCase requestDtoUseCase) async{
    try {
      var result = await authRemoteDataSource.refreshToken(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? logout() async {
    try {
      var result = await authRemoteDataSource.logout();
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
