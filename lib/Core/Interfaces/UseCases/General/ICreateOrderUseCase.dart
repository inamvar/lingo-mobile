import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/General/CreateOrderRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Order/CreateOrderResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class ICreateOrderUseCase extends IUseCase<
    BaseNetworkResponse<CreateOrderResponseDtoUseCase>,
    CreateOrderRequestDtoUseCase> {}
