import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IRegisterUseCase
    extends IUseCase<BaseNetworkResponse<RegisterResponseDtoUseCase>, RegisterRequestDtoUseCase> {}
