import 'package:get_it/get_it.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/BaseDio.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/AuthRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/CommentsRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/CourseRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/PackagesRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/ReportRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/UserRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/CommentsRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/CourseRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/GeneralRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/PackagesRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/ReportRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/Repositories/UserRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ILogoutUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/IRefreshTokenUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IAddCommentUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IGetCommentByIdUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IGetCommentsUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetCourseByIdUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetPackageCoursesUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetVideoBySlugUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ICreateOrderUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/IGetBannersUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/IGetSettingsUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ISearchByTagUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ISearchUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Packages/IGetGoldenPackageUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Packages/IGetPackagesUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IDownloadReceiptUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IOrderHistoryUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IPurchasedCoursesUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IChangePassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/ICheckPhoneStatusUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IConfirmPhoneUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IForgotPassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/IRegisterUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ISignInUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IGetProfileUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IRequestPhoneConfirmUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IResetPassUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IUpdateProfileUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/LogoutUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/RefreshTokenUseCase.dart';
import 'package:lingo/Core/UseCases/CommentsUseCases/AddCommentUseCase.dart';
import 'package:lingo/Core/UseCases/CommentsUseCases/GetCommentByIdUseCase.dart';
import 'package:lingo/Core/UseCases/CommentsUseCases/GetCommentsUseCase.dart';
import 'package:lingo/Core/UseCases/CourseUseCases/GetCourseByIdUseCase.dart';
import 'package:lingo/Core/UseCases/CourseUseCases/GetPackageCoursesUseCase.dart';
import 'package:lingo/Core/UseCases/General/CreateOrderUseCase.dart';
import 'package:lingo/Core/UseCases/General/GetBannersUseCase.dart';
import 'package:lingo/Core/UseCases/General/GetSettingsUseCase.dart';
import 'package:lingo/Core/UseCases/General/SearchUseCase.dart';
import 'package:lingo/Core/UseCases/PackagesUseCases/GetGoldenPackageUseCase.dart';
import 'package:lingo/Core/UseCases/PackagesUseCases/GetPackagesUseCase.dart';
import 'package:lingo/Core/UseCases/Report/DownloadReceiptUseCase.dart';
import 'package:lingo/Core/UseCases/Report/OrderHistoryUseCase.dart';
import 'package:lingo/Core/UseCases/Report/PurchasedCoursesUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ChangePassUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/CheckPhoneUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ConfirmPhoneUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ForgotPassUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/LoginUseCase.dart';
import 'package:lingo/Core/UseCases/AuthUseCases/RegisterUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/GetProfileUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/RequestPhoneConfirmUseCase.dart';
import 'package:lingo/Core/UseCases/UserUseCases/ResetPassUseCase.dart';
import 'package:lingo/infrastructure/DataSources/Remote/AuthRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/DataSources/Remote/CommentsRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/DataSources/Remote/CourseRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/DataSources/Remote/ReportRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/DataSources/Remote/UserRemoteDataSourceImpl.dart';
import 'package:lingo/infrastructure/Repositories/AuthRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/CommentsRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/CourseRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/GeneralRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/PackagesRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/ReportRepositoryImpl.dart';
import 'package:lingo/infrastructure/Repositories/UserRepositoryImpl.dart';

import '../../infrastructure/DataSources/Remote/GeneralRemoteDataSourceImpl.dart';
import '../../infrastructure/DataSources/Remote/PackagesRemoteDataSourceImpl.dart';
import '../Interfaces/DataSources/Remote/GeneralRemoteDataSource.dart';
import '../Interfaces/Repositories/AuthRemoteRepository.dart';
import '../UseCases/CourseUseCases/GetVideoBySlugUseCase.dart';
import '../UseCases/General/SearchByTagUseCase.dart';
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
  appSingleton.registerLazySingleton<IGetCourseByIdUseCase>(
      () => GetCourseByIdUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IPurchasedCoursesUseCase>(
      () => PurchasedCoursesUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IOrderHistoryUseCase>(
          () => OrderHistoryUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IGetCommentsUseCase>(
          () => GetCommentsUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IAddCommentUseCase>(
          () => AddCommentUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IDownloadReceiptUseCase>(
          () => DownloadReceiptUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IGetCommentByIdUseCase>(
          () => GetCommentByIdUseCase(appSingleton()));
  appSingleton.registerLazySingleton<ICheckPhoneStatusUseCase>(
          () => CheckPhoneUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IRequestPhoneConfirmUseCase>(
          () => RequestPhoneConfirmUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IConfirmPhoneUseCase>(
          () => ConfirmPhoneUseCase(appSingleton()));
  appSingleton.registerLazySingleton<ICreateOrderUseCase>(
          () => CreateOrderUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IGetBannersUseCase>(
          () => GetBannersUseCase(appSingleton()));
  appSingleton.registerLazySingleton<ISearchByTagUseCase>(
          () => SearchByTagUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IGetSettingsUseCase>(
          () => GetSettingsUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IGetGoldenPackageUseCase>(
          () => GetGoldenPackageUseCase(appSingleton()));
  appSingleton.registerLazySingleton<IGetVideoBySlugUseCase>(
          () => GetVideoBySlugUseCase(appSingleton()));

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
  appSingleton.registerLazySingleton<ReportRemoteRepository>(
          () => ReportRepositoryImpl(appSingleton()));
  appSingleton.registerLazySingleton<CommentsRemoteRepository>(
          () => CommentsRepositoryImpl(appSingleton()));

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
  appSingleton.registerLazySingleton<ReportRemoteDataSource>(
          () => ReportRemoteDataSourceImpl());
  appSingleton.registerLazySingleton<CommentsRemoteDataSource>(
          () => CommentsRemoteDataSourceImpl());

  BaseBrain.dio = BaseDio().dio;
}
