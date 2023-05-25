import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IResetPassUseCase.dart';

import '../../Interfaces/Repositories/UserRemoteRepository.dart';

class ResetPassUseCase extends IResetPassUseCase {
  final UserRemoteRepository repository;

  ResetPassUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {ResetPassRequestDtoUseCase? params}) async {
    return await repository.resetPass(params!)!;
  }
}
