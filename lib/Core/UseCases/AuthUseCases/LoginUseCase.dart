import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Interfaces/Repositories/AuthRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/ISignInUseCase.dart';

class LoginUseCase implements ILoginUseCase {
  final AuthRemoteRepository repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<TokenResponseDtoUseCase>>> execute(
      {LoginRequestDtoUseCase? params}) async {
    return await repository.login(params!)!;
  }
}
