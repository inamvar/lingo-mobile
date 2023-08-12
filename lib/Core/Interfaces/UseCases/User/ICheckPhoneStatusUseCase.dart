import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/User/PhoneStatusResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class ICheckPhoneStatusUseCase extends IUseCase<
    BaseNetworkResponse<PhoneStatusResponseDtoUseCase>, NoParams> {}
