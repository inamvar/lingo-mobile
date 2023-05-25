
import 'package:get_it/get_it.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/BaseDio.dart';
import 'package:lingo/Core/Interfaces/DataSources/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/UserRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IForgotPassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/IRegisterUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ISignInUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IResetPassUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ForgotPassUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/LoginUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/RegisterUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ResetPassUseCase.dart';
import 'package:lingo/infrastructure/DataSources/AuthRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/DataSources/UserRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/Repositories/AuthRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/UserRepositoryImpl.dart';

import '../Interfaces/Repositories/AuthRemoteRepository.dart';

final appSingleton = GetIt.instance;

initInjections() async{
  BaseBrain.dio = BaseDio().dio;

  //UseCases
  appSingleton.registerLazySingleton<ILoginUseCase>(()=> LoginUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IRegisterUseCase>(()=> RegisterUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IForgotPassUseCase>(()=> ForgotPassUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IResetPassUseCase>(()=> ResetPassUseCase(repository: appSingleton()));

  //Repositories
  appSingleton.registerLazySingleton<AuthRemoteRepository>(()=> AuthRepositoryImpl(appSingleton()));
  appSingleton.registerLazySingleton<UserRemoteRepository>(()=> UserRepositoryImpl(appSingleton()));

  //Data Sources
  appSingleton.registerLazySingleton<AuthRemoteDataSource>(()=> AuthRemoteDataSourceImpl());
  appSingleton.registerLazySingleton<UserRemoteDataSource>(()=> UserRemoteDataSourceImpl());
}