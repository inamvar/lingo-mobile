import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/OrderHistoryResponse.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IOrderHistoryUseCase.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';
import '../../Dto/Models/Failure.dart';
import '../../Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../Interfaces/Repositories/ReportRemoteRepository.dart';

class OrderHistoryUseCase extends IOrderHistoryUseCase {
  ReportRemoteRepository remoteRepository;

  OrderHistoryUseCase(this.remoteRepository);

  @override
  Future<Either<Failure, BaseNetworkResponse<OrderHistoryResponse>>>
  execute({PaginationRequestDtoUseCase? params}) async {
    return await remoteRepository.getMyTransactions(params!);
  }
}