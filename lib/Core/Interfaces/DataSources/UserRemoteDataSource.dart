import '../../Dto/Models/BaseNetworkResponse.dart';
import '../../Dto/UseCases/Requests/User/ForgotPassRequestDtoUseCase.dart';
import '../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';

abstract class UserRemoteDataSource{
  Future<BaseNetworkResponse<ResponseDtoUseCase>> forgotPass(ForgotPassRequestDtoUseCase requestDtoUseCase);

}