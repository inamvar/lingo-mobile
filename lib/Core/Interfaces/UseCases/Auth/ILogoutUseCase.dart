import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../IUseCase.dart';

abstract class ILogoutUseCase
    extends IUseCase<BaseNetworkResponse<ResponseDtoUseCase>, NoParams> {}