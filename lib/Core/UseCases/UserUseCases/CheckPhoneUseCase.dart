import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/User/PhoneStatusResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/ICheckPhoneStatusUseCase.dart';

class CheckPhoneUseCase extends ICheckPhoneStatusUseCase {
  final UserRemoteRepository repository;

  CheckPhoneUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<PhoneStatusResponseDtoUseCase>>>
      execute({NoParams? params}) async{
    return await repository.checkPhoneStatus()!;
  }
}
