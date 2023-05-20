import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Entities/Failure.dart';
import 'package:lingo/Core/Entities/ServerFailure.dart';
import 'package:lingo/Core/Interfaces/DataSources/AuthDataSource/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/AuthRemoteRepository.dart';

class AuthRepositoryImpl extends AuthRemoteRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, TokenResponseDtoUseCase>>? login(
      LoginRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await authRemoteDataSource.login(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      var serverError = ServerFailure();
      var errorData = error.response?.data;
      if (errorData != null) {
        var errorResponse = ResponseDtoUseCase.fromJson(errorData);
        if (errorResponse.errorMessages != null &&
            errorResponse.errorMessages!.isNotEmpty) {
          serverError.errorMessage = errorResponse.errorMessages![0];
        }
      }
      return Left(serverError);
    }
  }
}
