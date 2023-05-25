import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';

abstract class IResetPassUseCase extends IUseCase<
    BaseNetworkResponse<ResponseDtoUseCase>, ResetPassRequestDtoUseCase> {}