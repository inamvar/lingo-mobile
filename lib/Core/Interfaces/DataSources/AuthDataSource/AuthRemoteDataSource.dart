

import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';

import '../../../Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';

abstract class AuthRemoteDataSource {
  Future<TokenResponseDtoUseCase> login(LoginRequestDtoUseCase requestDtoUseCase);
}