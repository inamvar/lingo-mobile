import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Entities/Failure.dart';
import 'package:lingo/Core/Interfaces/UseCases/IRegisterUseCase.dart';

import '../../Interfaces/Repositories/AuthRemoteRepository.dart';

class RegisterUseCase extends IRegisterUseCase {
  final AuthRemoteRepository repository;

  RegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, RegisterResponseDtoUseCase>> execute(
      {RegisterRequestDtoUseCase? params}) async{
    return await repository.register(params!)!;
  }
}
