import 'package:lingo/Core/Dto/UseCases/Requests/Auth/RefreshTokenRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';

abstract class IRefreshTokenUseCase
    implements
        IUseCase<BaseNetworkResponse<TokenResponseDtoUseCase>,
            RefreshTokenRequestDtoUseCase> {}
