import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RefreshTokenRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/UseCases/Requests/Auth/RegisterRequestDtoUseCase.dart';

abstract class AuthRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<TokenResponseDtoUseCase>>>? login(
      LoginRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<RegisterResponseDtoUseCase>>>? register(
      RegisterRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<TokenResponseDtoUseCase>>>? refreshToken(
      RefreshTokenRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? logout();
}
