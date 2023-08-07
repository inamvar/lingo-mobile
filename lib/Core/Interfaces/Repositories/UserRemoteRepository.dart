import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ChangePassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/UpdateProfileRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';
import '../../Dto/Models/Failure.dart';
import '../../Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import '../../Dto/UseCases/Responses/Auth/ResetPassResponseDtoUseCase.dart';
import '../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';

abstract class UserRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<ResetPassResponseDtoUseCase>>>? forgotPass(
      ForgotPassRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? resetPass(
      ResetPassRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>?
      getProfile();

  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>?
      updateProfile(UpdateProfileRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? changePass(
      ChangePassRequestDtoUseCase requestDtoUseCase);
}
