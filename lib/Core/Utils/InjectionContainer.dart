import 'package:get_it/get_it.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/BaseDio.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/CourseRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/PackagesRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/UserRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/CourseRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/GeneralRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/PackagesRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ILogoutUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/IRefreshTokenUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetPackageCoursesUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ISearchUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Packages/IGetPackagesUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IChangePassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IForgotPassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/IRegisterUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ISignInUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IGetProfileUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IResetPassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IUpdateProfileUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/LogoutUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/RefreshTokenUseCase.dart';
import 'package:lingo/Core/UseCases/CourseUseCases/GetPackageCoursesUseCase.dart';
import 'package:lingo/Core/UseCases/General/SearchUseCase.dart';
import 'package:lingo/Core/UseCases/PackagesUseCases/GetPackagesUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ChangePassUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ForgotPassUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/LoginUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/RegisterUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/GetProfileUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ResetPassUseCase.dart';
import 'package:lingo/infrastructure/DataSources/Remote/AuthRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/DataSources/Remote/CourseRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/DataSources/Remote/UserRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/Repositories/AuthRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/CourseRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/GeneralRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/PackagesRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/UserRepositoryImpl.dart';

import '../../infrastructure/DataSources/Remote/GeneralRemoteDataSourceImpl.dart';
import '../../infrastructure/DataSources/Remote/PackagesRemoteDataSourceImpl.dart';
import '../Interfaces/DataSources/Remote/GeneralRemoteDataSource.dart';
import '../Interfaces/Repositories/AuthRemoteRepository.dart';
import '../UseCases/UserUseCases/UpdateProfileUseCase.dart';

final appSingleton = GetIt.instance;

initInjections() async {
  //UseCases
  appSingleton.registerLazySingleton<ILoginUseCase>(
      () => LoginUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IRegisterUseCase>(
      () => RegisterUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IForgotPassUseCase>(
      () => ForgotPassUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IResetPassUseCase>(
      () => ResetPassUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IGetPackagesUseCase>(
      () => GetPackagesUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IRefreshTokenUseCase>(
      () => RefreshTokenUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IGetProfileUseCase>(
      () => GetProfileUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<ILogoutUseCase>(
      () => LogoutUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IUpdateProfileUseCase>(
      () => UpdateProfileUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IChangePassUseCase>(
      () => ChangePassUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<ISearchUseCase>(
      () => SearchUseCase(repository: appSingleton()));
  appSingleton.registerLazySingleton<IGetPackageCoursesUseCase>(
      () => GetPackageCoursesUseCase(appSingleton()));

  //Repositories
  appSingleton.registerLazySingleton<AuthRemoteRepository>(
      () => AuthRepositoryImpl(appSingleton()));
  appSingleton.registerLazySingleton<UserRemoteRepository>(
      () => UserRepositoryImpl(appSingleton()));
  appSingleton.registerLazySingleton<PackagesRemoteRepository>(
      () => PackagesRepositoryImpl(appSingleton()));
  appSingleton.registerLazySingleton<GeneralRemoteRepository>(
      () => GeneralRepositoryImpl(appSingleton()));
  appSingleton.registerLazySingleton<CourseRemoteRepository>(
      () => CourseRepositoryImpl(appSingleton()));

  //Data Sources
  appSingleton.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl());
  appSingleton.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl());
  appSingleton.registerLazySingleton<PackagesRemoteDataSource>(
      () => PackagesRemoteDataSourceImpl());
  appSingleton.registerLazySingleton<GeneralRemoteDataSource>(
      () => GeneralRemoteDataSourceImpl());
  appSingleton.registerLazySingleton<CourseRemoteDataSource>(
      () => CourseRemoteDataSourceImpl());

  BaseBrain.dio = BaseDio().dio;
}
