import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/UserRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';

class UserRepositoryImpl extends UserRemoteRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? forgotPass(
      ForgotPassRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await userRemoteDataSource.forgotPass(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? resetPass(
      ResetPassRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await userRemoteDataSource.resetPass(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
