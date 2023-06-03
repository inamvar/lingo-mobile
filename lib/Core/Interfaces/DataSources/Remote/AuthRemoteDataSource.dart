import 'package:lingo/Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';

import '../../../Dto/UseCases/Requests/Auth/RefreshTokenRequestDtoUseCase.dart';
import '../../../Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import '../../../Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';

abstract class AuthRemoteDataSource {
  Future<BaseNetworkResponse<TokenResponseDtoUseCase>> login(
      LoginRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<RegisterResponseDtoUseCase>> register(
      RegisterRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<TokenResponseDtoUseCase>> refreshToken(
      RefreshTokenRequestDtoUseCase requestDtoUseCase);
}
