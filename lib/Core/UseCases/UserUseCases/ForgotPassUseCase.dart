import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IForgotPassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

class ForgotPassUseCase extends IForgotPassUseCase {
  final UserRemoteRepository repository;

  ForgotPassUseCase({required this.repository});

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {ForgotPassRequestDtoUseCase? params}) async {
    return await repository.forgotPass(params!)!;
  }
}
