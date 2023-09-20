import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/Banner.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/Setting.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/General/CreateOrderRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/General/GetBannersResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Order/CreateOrderResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';

abstract class GeneralRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<SearchResponseDtoUseCase>>>?
      search(PaginationRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<SearchResponseDtoUseCase>>>?
      searchByTag(PaginationRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<CreateOrderResponseDtoUseCase>>>?
      createOrder(CreateOrderRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<GetBannersResponseDtoUseCase>>>?
      getBanners();

  Future<Either<Failure, BaseNetworkResponse<List<Setting>>>>?
  getSettings();
}
