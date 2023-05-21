import 'package:lingo/Core/Dto/UseCases/Requests/RegisterRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/RegisterResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IRegisterUseCase
    extends IUseCase<RegisterResponseDtoUseCase, RegisterRequestDtoUseCase> {}
