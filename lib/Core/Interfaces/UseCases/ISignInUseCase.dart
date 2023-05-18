import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class ILoginUseCase
    implements IUseCase<TokenResponseDtoUseCase, LoginRequestDtoUseCase> {}
