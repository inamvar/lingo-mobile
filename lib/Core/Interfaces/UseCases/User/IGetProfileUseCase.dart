import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';

abstract class IGetProfileUseCase
    extends IUseCase<BaseNetworkResponse<ResponseDtoUseCase>, NoParams> {}
