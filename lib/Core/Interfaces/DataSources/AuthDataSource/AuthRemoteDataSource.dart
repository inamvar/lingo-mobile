

import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/RegisterRequestDtoUseCase.dart';

import '../../../Dto/UseCases/Responses/RegisterResponseDtoUseCase.dart';
import '../../../Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';

abstract class AuthRemoteDataSource {
  Future<TokenResponseDtoUseCase> login(LoginRequestDtoUseCase requestDtoUseCase);

  Future<RegisterResponseDtoUseCase> register(RegisterRequestDtoUseCase requestDtoUseCase);
}