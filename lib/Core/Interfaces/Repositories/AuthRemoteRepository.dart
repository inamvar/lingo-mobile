import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Entities/Failure.dart';

abstract class AuthRemoteRepository {
  Future<Either<Failure,TokenResponseDtoUseCase>>? login(LoginRequestDtoUseCase requestDtoUseCase);
}