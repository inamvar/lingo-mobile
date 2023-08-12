import 'package:lingo/Core/Dto/UseCases/Requests/User/ChangePassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/ResetPassRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/UpdateProfileRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/User/PhoneStatusResponseDtoUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import '../../../Dto/UseCases/Responses/Auth/ResetPassResponseDtoUseCase.dart';
import '../../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';

abstract class UserRemoteDataSource {
  Future<BaseNetworkResponse<ResetPassResponseDtoUseCase>> forgotPass(
      ForgotPassRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<ResponseDtoUseCase>> resetPass(
      ResetPassRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<ResponseDtoUseCase>> getProfile();

  Future<BaseNetworkResponse<ResponseDtoUseCase>> updateProfile(
      UpdateProfileRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<ResponseDtoUseCase>> changePass(
      ChangePassRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<PhoneStatusResponseDtoUseCase>> checkPhoneStatus();

  Future<BaseNetworkResponse<ResponseDtoUseCase>> requestPhoneConfirm(String phone);

  Future<BaseNetworkResponse<ResponseDtoUseCase>> confirmPhone(String code);
}
