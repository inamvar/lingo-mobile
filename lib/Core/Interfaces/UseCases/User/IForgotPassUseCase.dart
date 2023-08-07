import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/UseCases/Responses/Auth/ResetPassResponseDtoUseCase.dart';

abstract class IForgotPassUseCase extends IUseCase<
    BaseNetworkResponse<ResetPassResponseDtoUseCase>, ForgotPassRequestDtoUseCase> {}
