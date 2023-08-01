import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Comments/GetCommentsResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IGetCommentsUseCase extends IUseCase<
    BaseNetworkResponse<GetCommentsResponseDtoUseCase>, PaginationRequestDtoUseCase> {}
