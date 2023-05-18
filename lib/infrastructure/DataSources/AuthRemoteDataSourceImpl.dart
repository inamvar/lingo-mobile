import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/DataSources/AuthDataSource/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Utils/ApiEndpoints.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<TokenResponseDtoUseCase> login(
      LoginRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .post(ApiEndpoints.login, data: requestDtoUseCase.toJson())
        .then((response) {
      ResponseDtoUseCase responseDtoUseCase =
          ResponseDtoUseCase.fromJson(response.data);
      return TokenResponseDtoUseCase.fromJson(responseDtoUseCase.data!);
    });

    return result;
  }
}
