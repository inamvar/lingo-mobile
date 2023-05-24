import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Interfaces/UseCases/IRegisterUseCase.dart';

import '../../Interfaces/Repositories/AuthRemoteRepository.dart';

class RegisterUseCase extends IRegisterUseCase {
  final AuthRemoteRepository repository;

  RegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<RegisterResponseDtoUseCase>>> execute(
      {RegisterRequestDtoUseCase? params}) async{
    return await repository.register(params!)!;
  }
}
