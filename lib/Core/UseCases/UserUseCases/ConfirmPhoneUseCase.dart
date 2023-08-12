import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IConfirmPhoneUseCase.dart';

class ConfirmPhoneUseCase extends IConfirmPhoneUseCase {
  final UserRemoteRepository repository;

  ConfirmPhoneUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {String? params}) async {
    return await repository.confirmPhone(params!)!;
  }
}
