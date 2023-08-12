import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IConfirmPhoneUseCase
    extends IUseCase<BaseNetworkResponse<ResponseDtoUseCase>, String> {}
