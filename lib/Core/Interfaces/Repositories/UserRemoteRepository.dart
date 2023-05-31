import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';
import '../../Dto/Models/Failure.dart';
import '../../Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import '../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';

abstract class UserRemoteRepository extends BaseRemoteRepository{
  Future<Either<Failure,BaseNetworkResponse<ResponseDtoUseCase>>>? forgotPass(
      ForgotPassRequestDtoUseCase requestDtoUseCase
      );

  Future<Either<Failure,BaseNetworkResponse<ResponseDtoUseCase>>>? resetPass(
      ResetPassRequestDtoUseCase requestDtoUseCase
      );
}