import 'package:lingo/Core/Dto/UseCases/Requests/Comments/SendMessageRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';

abstract class IAddCommentUseCase extends IUseCase<
    BaseNetworkResponse<ResponseDtoUseCase>, SendMessageRequestDtoUseCase> {}
