import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Entities/Failure.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/UseCases/Requests/RegisterRequestDtoUseCase.dart';

abstract class AuthRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, TokenResponseDtoUseCase>>? login(
      LoginRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, RegisterResponseDtoUseCase>>? register(
      RegisterRequestDtoUseCase requestDtoUseCase);
}
