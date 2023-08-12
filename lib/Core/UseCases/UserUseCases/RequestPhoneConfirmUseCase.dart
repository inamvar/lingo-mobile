import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IRequestPhoneConfirmUseCase.dart';

class RequestPhoneConfirmUseCase extends IRequestPhoneConfirmUseCase {
  final UserRemoteRepository repository;

  RequestPhoneConfirmUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {String? params}) async {
    return await repository.requestPhoneConfirm(params!)!;
  }
}
