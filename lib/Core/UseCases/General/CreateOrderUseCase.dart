import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Order/CreateOrderResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ICreateOrderUseCase.dart';

import '../../Interfaces/Repositories/GeneralRemoteRepository.dart';

class CreateOrderUseCase extends ICreateOrderUseCase {
  final GeneralRemoteRepository repository;

  CreateOrderUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<CreateOrderResponseDtoUseCase>>>
      execute({String? params}) async {
    return await repository.createOrder(params!)!;
  }
}
