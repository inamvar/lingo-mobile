import 'package:lingo/Core/Dto/UseCases/Requests/Auth/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class ILoginUseCase
    implements
        IUseCase<BaseNetworkResponse<TokenResponseDtoUseCase>,
            LoginRequestDtoUseCase> {}
