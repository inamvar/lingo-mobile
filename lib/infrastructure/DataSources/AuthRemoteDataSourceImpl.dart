import 'package:lingo/Core/Dto/UseCases/Requests/LoginRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/AuthDataSource/AuthRemoteDataSource.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource{
  @override
  Future<TokenResponseDtoUseCase> login(LoginRequestDtoUseCase requestDtoUseCase) {
    // TODO: implement login
    throw UnimplementedError();
  }

}