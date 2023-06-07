import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/UpdateProfileRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IUpdateProfileUseCase.dart';

import '../../Interfaces/Repositories/UserRemoteRepository.dart';

class UpdateProfileUseCase implements IUpdateProfileUseCase {
  final UserRemoteRepository repository;

  UpdateProfileUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {UpdateProfileRequestDtoUseCase? params}) async {
    return await repository.updateProfile(params!)!;
  }
}
