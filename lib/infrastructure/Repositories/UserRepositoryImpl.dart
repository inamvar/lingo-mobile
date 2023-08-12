import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ChangePassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/UpdateProfileRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/User/PhoneStatusResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/UserRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';

import '../../Core/Dto/UseCases/Responses/Auth/ResetPassResponseDtoUseCase.dart';

class UserRepositoryImpl extends UserRemoteRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<ResetPassResponseDtoUseCase>>>?
      forgotPass(ForgotPassRequestDtoUseCase requestDtoUseCase) async {
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

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>?
      getProfile() async {
    try {
      var result = await userRemoteDataSource.getProfile();
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>?
      updateProfile(UpdateProfileRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await userRemoteDataSource.updateProfile(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? changePass(
      ChangePassRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await userRemoteDataSource.changePass(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<PhoneStatusResponseDtoUseCase>>>?
      checkPhoneStatus() async {
    try {
      var result = await userRemoteDataSource.checkPhoneStatus();
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>?
      confirmPhone(String code) async {
    try {
      var result = await userRemoteDataSource.confirmPhone(code);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>?
      requestPhoneConfirm(String phone) async {
    try {
      var result = await userRemoteDataSource.requestPhoneConfirm(phone);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
