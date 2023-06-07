import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ChangePassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IChangePassUseCase.dart';

import '../../Interfaces/Repositories/UserRemoteRepository.dart';

class ChangePassUseCase implements IChangePassUseCase {
  final UserRemoteRepository repository;

  ChangePassUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {ChangePassRequestDtoUseCase? params}) async {
    return await repository.changePass(params!)!;
  }
}
