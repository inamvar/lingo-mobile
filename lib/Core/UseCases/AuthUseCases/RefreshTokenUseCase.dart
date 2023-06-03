import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RefreshTokenRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/IRefreshTokenUseCase.dart';

import '../../Interfaces/Repositories/AuthRemoteRepository.dart';

class RefreshTokenUseCase implements IRefreshTokenUseCase {
  final AuthRemoteRepository repository;

  RefreshTokenUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<TokenResponseDtoUseCase>>> execute(
      {RefreshTokenRequestDtoUseCase? params}) async {
    return await repository.refreshToken(params!)!;
  }
}
