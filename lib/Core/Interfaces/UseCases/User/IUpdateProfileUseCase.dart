import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/UpdateProfileRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';

abstract class IUpdateProfileUseCase
    implements IUseCase<BaseNetworkResponse<ResponseDtoUseCase>, UpdateProfileRequestDtoUseCase> {}
