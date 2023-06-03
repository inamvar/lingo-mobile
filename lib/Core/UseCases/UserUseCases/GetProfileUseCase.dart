import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IGetProfileUseCase.dart';

import '../../Interfaces/Repositories/UserRemoteRepository.dart';

class GetProfileUseCase extends IGetProfileUseCase {
  final UserRemoteRepository repository;

  GetProfileUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {NoParams? params}) async {
    return await repository.getProfile()!;
  }
}
