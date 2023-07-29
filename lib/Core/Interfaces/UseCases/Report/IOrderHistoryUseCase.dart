import 'package:lingo/Core/Dto/UseCases/Responses/Report/OrderHistoryResponse.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../IUseCase.dart';

abstract class IOrderHistoryUseCase extends IUseCase<
    BaseNetworkResponse<OrderHistoryResponse>,
    PaginationRequestDtoUseCase> {}
