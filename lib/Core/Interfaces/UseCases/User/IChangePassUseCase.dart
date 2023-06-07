import 'package:lingo/Core/Dto/UseCases/Requests/User/ChangePassRequestDtoUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../IUseCase.dart';

abstract class IChangePassUseCase implements IUseCase<
    BaseNetworkResponse<ResponseDtoUseCase>, ChangePassRequestDtoUseCase> {}