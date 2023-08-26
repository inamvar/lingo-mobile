import 'package:lingo/Core/Dto/Models/Banner.dart';
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
      String courseId);

  Future<BaseNetworkResponse<GetBannersResponseDtoUseCase>> getBanners();
}