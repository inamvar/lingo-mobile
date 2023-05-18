
import 'package:get_it/get_it.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/BaseDio.dart';
import 'package:lingo/Core/Interfaces/DataSources/AuthDataSource/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/UseCases/ISignInUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/LoginUseCase.dart';
import 'package:lingo/infrastructure/DataSources/AuthRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/Repositories/AuthRepositoryImpl.dart';

import '../Interfaces/Repositories/AuthRemoteRepository.dart';

final appSingleton = GetIt.instance;

initInjections() async{
  BaseBrain.dio = BaseDio().dio;

  //UseCases
  appSingleton.registerLazySingleton<ILoginUseCase>(()=> LoginUseCase(repository: appSingleton()));

  //Repositories
  appSingleton.registerLazySingleton<AuthRemoteRepository>(()=> AuthRepositoryImpl(appSingleton()));

  //Data Sources
  appSingleton.registerLazySingleton<AuthRemoteDataSource>(()=> AuthRemoteDataSourceImpl());
}