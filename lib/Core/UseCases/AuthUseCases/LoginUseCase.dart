import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Entities/Failure.dart';
import 'package:lingo/Core/Interfaces/Repositories/AuthRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/ISignInUseCase.dart';

class LoginUseCase implements ILoginUseCase{
  final AuthRemoteRepository repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, TokenResponseDtoUseCase>> execute({LoginRequestDtoUseCase? params}) async{
    return await repository.login(params!)!;
  }


}