import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ILogoutUseCase.dart';

import '../../Interfaces/Repositories/AuthRemoteRepository.dart';

class LogoutUseCase implements ILogoutUseCase{

  final AuthRemoteRepository repository;

  LogoutUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute({NoParams? params}) async{
    return await repository.logout()!;
  }

}