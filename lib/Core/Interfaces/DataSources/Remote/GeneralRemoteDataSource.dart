import 'package:lingo/Core/Dto/Models/Banner.dart';
import 'package:lingo/Core/Dto/Models/Setting.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/General/CreateOrderRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/General/GetBannersResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Order/CreateOrderResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';

abstract class GeneralRemoteDataSource {
  Future<BaseNetworkResponse<SearchResponseDtoUseCase>> search(
      PaginationRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<SearchResponseDtoUseCase>> searchByTag(
      PaginationRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<CreateOrderResponseDtoUseCase>> createOrder(
      CreateOrderRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<GetBannersResponseDtoUseCase>> getBanners();

  Future<BaseNetworkResponse<List<Setting>>> getSettings();

}